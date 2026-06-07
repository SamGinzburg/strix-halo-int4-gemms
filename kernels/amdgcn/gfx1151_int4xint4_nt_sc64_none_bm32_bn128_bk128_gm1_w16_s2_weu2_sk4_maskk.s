	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v12, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v11, 4, v0
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v14, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v9, 1, v12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v38, 2, v0
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v10, 24, v14
	v_and_b32_e32 v47, 0xe0, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v6, 3, v0
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v15, 48, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v13, 0x100, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v48, v0, 4, 1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v33, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v7, 1, v47
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v6, 24, v6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v8, 1, v15
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v49, 4, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v21, v48, v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v6, v33, v6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v7, v14, v8
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_lshlrev_b32_e32 v34, 5, v12
	v_lshlrev_b32_e32 v35, 4, v47
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v32, v49, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s9, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v23, 2, v21
	v_or_b32_e32 v22, 4, v21
	v_or_b32_e32 v20, 6, v21
	v_or_b32_e32 v19, 8, v21
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v18, 10, v21
	v_or_b32_e32 v16, 12, v21
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v36, 0, v6
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_u32_f32 s9, s9
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v37, 0, v7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v17, 14, v21
	v_mov_b32_e32 v26, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s9, s11
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s17, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s18, s17
	v_rcp_iflag_f32_e32 v1, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_readfirstlane_b32 s18, v1
	s_sub_i32 s10, 0, s17
	s_mov_b32 s11, 0x31027000
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s23, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s10, s10, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s18, s10
	s_abs_i32 s10, s2
	s_add_i32 s18, s18, s5
	s_mul_hi_u32 s5, s10, s18
	s_xor_b32 s18, s2, s6
	s_mul_i32 s19, s5, s17
	s_ashr_i32 s34, s18, 31
	s_sub_i32 s18, s10, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s22, s18, s17
	s_cmp_ge_u32 s18, s17
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s22, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s17
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s22, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s17, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s37, s5, s34
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s38, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s17
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s37, s34
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s36, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s17, s5, s6
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mul_lo_u32 v5, s36, v11
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s35, s3, 5
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s38, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v3, s35, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s35, v10
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s33, s36
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s38, s3
.Ltmp19:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[1:2], null, s36, v38, v[10:11]
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v2, v5, v9, s2
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s36, v3
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v3
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s18, s18, 6
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s38, 63
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s36, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 32, v4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s38, 64
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s16, s6, s36
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s19, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v1, s35, s16, v1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v1, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v5, v3, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[3:4], v4, s[20:23], 0 offen
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s38, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v36, v5 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[3:4]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	s_add_i32 s5, s35, 32
	v_or_b32_e32 v3, s33, v32
	v_or_b32_e32 v5, s5, v9
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add_nc_u32_e32 v2, s5, v2
	v_or_b32_e32 v4, s6, v21
	v_or_b32_e32 v6, s6, v23
	v_mul_lo_u32 v3, v3, s18
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s36, v5
	v_or_b32_e32 v7, s6, v22
	v_or_b32_e32 v8, s6, v20
	v_or_b32_e32 v24, s6, v19
	v_or_b32_e32 v5, s6, v18
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, vcc_lo
	v_or_b32_e32 v25, s6, v16
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_or_b32_e32 v26, s6, v17
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	s_mov_b32 s30, s10
	buffer_load_u16 v68, v2, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 1, v4
	v_lshlrev_b32_e32 v4, 1, v6
	v_lshlrev_b32_e32 v6, 1, v7
	s_mov_b32 s31, s11
	v_lshlrev_b32_e32 v7, 1, v8
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v69, v2, s[28:31], 0 offen
	buffer_load_u16 v70, v4, s[28:31], 0 offen
	buffer_load_u16 v71, v6, s[28:31], 0 offen
	buffer_load_u16 v72, v7, s[28:31], 0 offen
	v_lshlrev_b32_e32 v2, 1, v24
	v_lshlrev_b32_e32 v4, 1, v5
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_lshlrev_b32_e32 v5, 1, v25
	v_lshlrev_b32_e32 v6, 1, v26
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v73, v3, s[24:27], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v74, v2, s[28:31], 0 offen
	buffer_load_u16 v75, v4, s[28:31], 0 offen
	buffer_load_u16 v76, v5, s[28:31], 0 offen
	buffer_load_u16 v77, v6, s[28:31], 0 offen
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v2, s5, v10
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v1, 32, v1
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s36, v2
	v_and_or_b32 v2, 0x218, v33, v34
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, s3
	v_xor_b32_e32 v8, 24, v2
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_xor_b32_e32 v5, 8, v2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v39, 0, v2
	v_xor_b32_e32 v6, 16, v2
	v_add_nc_u32_e32 v45, 0, v8
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[50:51], v1, s[20:23], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v3, 24, v33
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v41, 0, v5
	v_add_nc_u32_e32 v43, 0, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_u32 s38, 0xc0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v8, v1
	v_or3_b32 v7, v35, v3, v34
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_xor_b32_e32 v24, 8, v7
	v_add_nc_u32_e32 v40, 0, v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[52:53], v39 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[54:55], v40
	v_xor_b32_e32 v25, 16, v7
	v_add_nc_u32_e32 v42, 0, v24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[56:57], v41 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[58:59], v42
	v_xor_b32_e32 v7, 24, v7
	v_add_nc_u32_e32 v44, 0, v25
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[60:61], v43 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[62:63], v44
	v_add_nc_u32_e32 v46, 0, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[64:65], v45 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[66:67], v46
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[54:55], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(10)
	ds_store_b16 v36, v68 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[50:51]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[58:59], v[56:57], v[24:31] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v56, 16, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v52, 16, v69
	v_lshlrev_b32_e32 v53, 16, v70
	v_lshlrev_b32_e32 v54, 16, v71
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[62:63], v[60:61], v[24:31] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v55, 16, v72
	v_lshlrev_b32_e32 v57, 16, v74
	v_lshlrev_b32_e32 v58, 16, v75
	v_lshlrev_b32_e32 v59, 16, v76
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[66:67], v[64:65], v[24:31] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v60, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_mul_f32_e32 v24, v24, v56
	v_mul_f32_e32 v25, v25, v56
	v_mul_f32_e32 v26, v26, v56
	v_mul_f32_e32 v27, v27, v56
	v_mul_f32_e32 v28, v28, v56
	v_mul_f32_e32 v29, v29, v56
	v_mul_f32_e32 v30, v30, v56
	v_mul_f32_e32 v31, v31, v56
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v24, v52, 0
	v_fma_f32 v25, v25, v53, 0
	v_fma_f32 v26, v26, v54, 0
	v_fma_f32 v27, v27, v55, 0
	v_fma_f32 v28, v28, v57, 0
	v_fma_f32 v29, v29, v58, 0
	v_fma_f32 v30, v30, v59, 0
	v_fma_f32 v31, v31, v60, 0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_add3_u32 v12, s33, v49, v12
	v_lshl_or_b32 v51, s37, 7, v38
	s_lshl_b32 s4, s37, 8
	s_lshl_b32 s14, s7, 1
	v_sub_nc_u32_e32 v50, s36, v10
	v_mul_lo_u32 v12, s18, v12
	v_add3_u32 v47, s14, s4, v47
	s_lshl_b32 s4, s34, 7
	v_lshlrev_b32_e32 v38, 1, v48
	v_subrev_nc_u32_e32 v51, s4, v51
	s_lshl_b32 s5, s34, 8
	v_sub_nc_u32_e32 v49, s36, v9
	v_subrev_nc_u32_e32 v47, s5, v47
	v_lshl_add_u32 v48, v12, 1, 2
	v_add_nc_u32_e32 v12, s33, v11
	v_mad_u64_u32 v[10:11], null, s36, v51, v[10:11]
	s_add_i32 s15, s35, 64
	s_add_i32 s34, s18, -2
	s_mov_b32 s24, s12
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s28, s16
	v_mad_u64_u32 v[11:12], null, s36, v12, v[9:10]
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s15, v49
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, s15, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v51, v38, v47
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s5, s15, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s34, s34, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s5, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v77, v48, s[24:27], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v78, v51, s[28:31], 0 offen
	buffer_load_u16 v79, v51, s[28:31], 0 offen offset:4
	buffer_load_u16 v80, v51, s[28:31], 0 offen offset:8
	buffer_load_u16 v81, v51, s[28:31], 0 offen offset:12
	buffer_load_u16 v82, v51, s[28:31], 0 offen offset:16
	buffer_load_u16 v83, v51, s[28:31], 0 offen offset:20
	buffer_load_u16 v84, v51, s[28:31], 0 offen offset:24
	buffer_load_u16 v85, v51, s[28:31], 0 offen offset:28
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[61:62], v40
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[63:64], v39 offset:4096
	ds_load_b64 v[65:66], v41 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[67:68], v42
	ds_load_b64 v[69:70], v44
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[71:72], v43 offset:4096
	ds_load_b64 v[73:74], v45 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[75:76], v46
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[61:62], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[67:68], v[65:66], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[69:70], v[71:72], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[75:76], v[73:74], v[51:58] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v81
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v12, s15, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s15, s15, 32
	s_cmp_lg_u32 s34, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	buffer_load_b64 v[59:60], v12, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v62, 16, v79
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v58, 16, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v48, 2, v48
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v36, v9 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[59:60]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v51, v58
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v25, v51, v62
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v56, v56, v58 :: v_dual_lshlrev_b32 v63, 16, v80
	v_mul_f32_e32 v12, v12, v58
	v_mul_f32_e32 v52, v52, v58
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v61, 16, v78
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v54, v54, v58 :: v_dual_add_nc_u32 v47, s14, v47
	v_dual_mul_f32 v57, v57, v58 :: v_dual_lshlrev_b32 v66, 16, v83
	v_mul_f32_e32 v53, v53, v58
	v_dual_mul_f32 v55, v55, v58 :: v_dual_lshlrev_b32 v68, 16, v85
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v26, v52, v63 :: v_dual_lshlrev_b32 v65, 16, v82
	v_dual_fmac_f32 v24, v12, v61 :: v_dual_lshlrev_b32 v67, 16, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v53, v64
	v_dual_fmac_f32 v29, v55, v66 :: v_dual_fmac_f32 v28, v54, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v31, v57, v68 :: v_dual_fmac_f32 v30, v56, v67
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_load_b64 s[0:1], s[0:1], 0x20
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s19
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s3, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr4
.LBB0_7:                                ; %Flow
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v3, 16, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_and_b32_e32 v1, 24, v33
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v8, 0x218, v33, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_or3_b32 v9, v35, v1, v34
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v1, 0, v8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v11, v8, 8, 0
	v_xad_u32 v10, v8, 24, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v4, v9, 8, 0
	v_add_nc_u32_e32 v6, 0, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v12, v8, 16, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v35, v9, 24, 0
	v_xad_u32 v36, v9, 16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[8:9], v11 offset:4096
	ds_load_b64 v[10:11], v10 offset:4096
	ds_load_b64 v[42:43], v12 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[44:45], v35
	ds_load_b64 v[46:47], v36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v36, v34
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[1:2], v1 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[4:5], v4
	ds_load_b64 v[6:7], v6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v37, v34
	v_mov_b32_e32 v38, v34
	v_mov_b32_e32 v39, v34
	v_mov_b32_e32 v40, v34
	v_mov_b32_e32 v41, v34
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[6:7], v[1:2], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[4:5], v[8:9], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v4, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[42:43], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[10:11], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v34
	v_cvt_f32_i32_e32 v6, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v36
	v_cvt_f32_i32_e32 v8, v37
	v_cvt_f32_i32_e32 v9, v38
	v_cvt_f32_i32_e32 v12, v39
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v37, v41
.LBB0_9:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v1, s18, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s18, -1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s4, s33, s18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s3, s3, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s4, s4, s3
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s3, s7
	s_mov_b32 s15, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v1, s4, v1, 1
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s6, s3
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s17, s17, 0xffff
	v_add_lshl_u32 v2, s3, v21, 1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v10, s3, v23, 1
	v_add_lshl_u32 v11, s3, v22, 1
	v_add_lshl_u32 v19, s3, v19, 1
	v_add_lshl_u32 v18, s3, v18, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v21, v1, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v10, s2
	v_cndmask_b32_e64 v10, 0x80000000, v11, s2
	v_add_lshl_u32 v11, s3, v20, 1
	v_add_lshl_u32 v16, s3, v16, 1
	v_add_lshl_u32 v17, s3, v17, 1
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v20, v1, s[16:19], 0 offen
	buffer_load_u16 v22, v2, s[16:19], 0 offen
	buffer_load_u16 v23, v10, s[16:19], 0 offen
	buffer_load_u16 v32, v11, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v11, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v2, v0, 3, 1
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s3, s33, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s3, s3, s6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_barrier
	v_and_b32_e32 v4, 28, v4
	v_lshlrev_b32_e32 v3, 2, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v4, 0xf00, v14, v4
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v10, 1, v15
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v15, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v12, v12, v21 :: v_dual_lshlrev_b32 v33, 10, v0
	v_mul_f32_e32 v5, v5, v21
	v_mul_f32_e32 v6, v6, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_or_b32 v1, 0x31c, v1, v10
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v10, s7, v11
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v21 :: v_dual_and_b32 v2, 0x2040, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v11, 1, v13
	v_and_b32_e32 v13, 0x1c00, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xor_b32_e32 v2, v1, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v9, v9, v21 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s3, v15, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or3_b32 v13, v13, v11, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v36, v36, v21 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[10:11], 2, v[1:2]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v37, v21
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v20, v24
	v_fma_f32 v6, v6, v22, v25
	v_fma_f32 v7, v7, v23, v26
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_add_co_u32 v10, vcc_lo, s0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v32, v27
	v_fma_f32 v9, v9, v19, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v15, 0, v13
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v18, v29
	v_fma_f32 v16, v36, v16, v30
	v_fma_f32 v17, v21, v17, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v24, v5, s2
	v_xad_u32 v33, v13, 4, 0
	v_cndmask_b32_e64 v6, v25, v6, s2
	v_xad_u32 v34, v13, 8, 0
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_xad_u32 v35, v13, 12, 0
	v_cndmask_b32_e64 v8, v27, v8, s2
	v_xad_u32 v2, v13, 16, 0
	v_xad_u32 v38, v13, 20, 0
	v_xad_u32 v39, v13, 24, 0
	v_xad_u32 v13, v13, 28, 0
	v_cndmask_b32_e64 v9, v28, v9, s2
	v_cndmask_b32_e64 v12, v29, v12, s2
	v_cndmask_b32_e64 v16, v30, v16, s2
	v_cndmask_b32_e64 v17, v31, v17, s2
	ds_store_b32 v15, v5
	ds_store_b32 v33, v6
	ds_store_b32 v34, v7
	ds_store_b32 v35, v8
	ds_store_b32 v2, v9
	ds_store_b32 v38, v12
	ds_store_b32 v39, v16
	ds_store_b32 v13, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v13, v[10:11], off
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v0, 5, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshrrev_b32_e32 v2, 5, v2
	v_and_b32_e32 v0, 32, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v4, v2
	v_or3_b32 v0, v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x1010, v0, 0
	v_xad_u32 v4, 0x2040, v0, 0
	v_xad_u32 v0, 0x3050, v0, 0
	ds_load_2addr_b32 v[8:9], v2 offset1:32
	ds_load_2addr_b32 v[6:7], v3 offset1:32
	ds_load_2addr_b32 v[4:5], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v0 offset1:32
.LBB0_10:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v12, v13, v8
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s7, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s0, v10
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_12:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v12, v13, v6
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s7, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s0, v10
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_14:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v12, v13, v4
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s7, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s0, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_16:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v2
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s7, 4, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s0, v10
	v_add_co_ci_u32_e64 v11, null, s1, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_18:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s7, 20, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_20:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[6:7], null, s7, 24, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s0, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s1, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_22:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s7, 28, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_24:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 86
		.amdhsa_next_free_sgpr 39
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_vgpr, 86
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4268
; TotalNumSgprs: 41
; NumVgprs: 86
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 86
; Occupancy: 16
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     86
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
