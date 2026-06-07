	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v12, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v11, 4, v0
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v9, 1, v12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v38, 2, v0
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v10, 24, v5
	v_and_b32_e32 v47, 0xe0, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v13, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v48, v0, 4, 1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v33, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v8, 1, v47
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v49, 16, v11
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s18, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 24, v7
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v15, 24, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v21, v48, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v32, v49, v12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v33, v7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v5, v5, v15
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_lshlrev_b32_e32 v34, 5, v12
	v_lshlrev_b32_e32 v35, 4, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v23, 2, v21
	v_or_b32_e32 v22, 4, v21
	v_or_b32_e32 v20, 6, v21
	v_or_b32_e32 v19, 8, v21
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v18, 10, v21
	v_or_b32_e32 v17, 12, v21
	v_or_b32_e32 v16, 14, v21
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_u32_f32 s7, s7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v36, 0, v7
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v37, 0, v5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 1
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s6, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s7
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s10, 0, s16
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s23, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s30, s17, 31
	s_sub_i32 s17, s10, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s22, s17, s16
	s_cmp_ge_u32 s17, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s22, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s16
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s22, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s34, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s35, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s34, s30
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s33, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s7
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mul_lo_u32 v6, s33, v11
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s31, s3, 5
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v3, s31, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s2, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s35, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s31, v10
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[1:2], null, s33, v38, v[10:11]
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s28, s33
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v2, v6, v9, s2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s7, s35, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s33, v3
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v3
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s18, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s33, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 32, v4
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s29, s7, 6
.Ltmp21:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s2, s18, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s35, 63
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add_nc_u32_e32 v3, s31, v2
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v1, s31, s2, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
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
	buffer_load_u16 v6, v3, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[3:4], v4, s[20:23], 0 offen
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v15, s28, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s35, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v36, v6 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[3:4]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	s_add_i32 s1, s31, 32
	v_mul_lo_u32 v3, v15, s29
	v_or_b32_e32 v6, s1, v9
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add_nc_u32_e32 v2, s1, v2
	v_or_b32_e32 v4, s18, v21
	v_or_b32_e32 v5, s18, v23
	v_or_b32_e32 v7, s18, v22
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s33, v6
	v_or_b32_e32 v8, s18, v20
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v3, 1, v3
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_mov_b32 s6, s10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_mov_b32 s7, s11
	v_or_b32_e32 v24, s18, v19
	v_or_b32_e32 v25, s18, v18
	v_or_b32_e32 v6, s18, v17
	v_or_b32_e32 v26, s18, v16
	buffer_load_u16 v68, v2, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 1, v4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v69, v3, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v3, 1, v5
	v_lshlrev_b32_e32 v4, 1, v7
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_lshlrev_b32_e32 v5, 1, v8
	v_lshlrev_b32_e32 v7, 1, v24
	v_lshlrev_b32_e32 v8, 1, v25
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v24, 1, v26
	s_clause 0x7
	buffer_load_u16 v70, v2, s[24:27], 0 offen
	buffer_load_u16 v71, v3, s[24:27], 0 offen
	buffer_load_u16 v72, v4, s[24:27], 0 offen
	buffer_load_u16 v73, v5, s[24:27], 0 offen
	buffer_load_u16 v74, v7, s[24:27], 0 offen
	buffer_load_u16 v75, v8, s[24:27], 0 offen
	buffer_load_u16 v76, v6, s[24:27], 0 offen
	buffer_load_u16 v77, v24, s[24:27], 0 offen
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v2, s1, v10
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v1, 32, v1
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	v_and_b32_e32 v3, 24, v33
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s33, v2
	v_and_or_b32 v2, 0x218, v33, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or3_b32 v7, v35, v3, v34
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	v_xor_b32_e32 v5, 8, v2
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v39, 0, v2
	v_xor_b32_e32 v24, 8, v7
	v_add_nc_u32_e32 v40, 0, v7
	v_xor_b32_e32 v6, 16, v2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[50:51], v1, s[20:23], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v41, 0, v5
	ds_load_b64 v[52:53], v39 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[54:55], v40
	v_xor_b32_e32 v25, 16, v7
	v_add_nc_u32_e32 v42, 0, v24
	v_xor_b32_e32 v8, 24, v2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v43, 0, v6
	ds_load_b64 v[56:57], v41 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[58:59], v42
	v_xor_b32_e32 v7, 24, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v44, 0, v25
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v45, 0, v8
	ds_load_b64 v[60:61], v43 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[62:63], v44
	v_add_nc_u32_e32 v46, 0, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[64:65], v45 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[66:67], v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_u32 s35, 0xc0
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
	v_lshlrev_b32_e32 v52, 16, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v53, 16, v70
	v_lshlrev_b32_e32 v54, 16, v71
	v_lshlrev_b32_e32 v55, 16, v72
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[62:63], v[60:61], v[24:31] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v56, 16, v73
	v_lshlrev_b32_e32 v57, 16, v74
	v_lshlrev_b32_e32 v58, 16, v75
	v_lshlrev_b32_e32 v59, 16, v76
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[24:31], v[66:67], v[64:65], v[24:31] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v60, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v30, v30
	v_mul_f32_e32 v61, v52, v24
	v_mul_f32_e32 v24, v52, v25
	v_mul_f32_e32 v26, v52, v26
	v_mul_f32_e32 v27, v52, v27
	v_mul_f32_e32 v62, v52, v28
	v_mul_f32_e32 v63, v52, v29
	v_mul_f32_e32 v64, v52, v30
	v_mul_f32_e32 v30, v52, v31
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v24, v54, 0
	v_fma_f32 v25, v61, v53, 0
	v_fma_f32 v28, v27, v56, 0
	v_fma_f32 v29, v26, v55, 0
	v_fma_f32 v26, v63, v58, 0
	v_fma_f32 v27, v62, v57, 0
	v_fma_f32 v30, v30, v60, 0
	v_fma_f32 v31, v64, v59, 0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_add3_u32 v12, s28, v49, v12
	v_lshl_or_b32 v51, s34, 7, v38
	s_lshl_b32 s0, s34, 8
	s_lshl_b32 s35, s19, 1
	v_sub_nc_u32_e32 v50, s33, v10
	v_mul_lo_u32 v12, s29, v12
	v_add3_u32 v47, s35, s0, v47
	s_lshl_b32 s0, s30, 7
	v_lshlrev_b32_e32 v38, 1, v48
	v_subrev_nc_u32_e32 v51, s0, v51
	s_lshl_b32 s1, s30, 8
	v_sub_nc_u32_e32 v49, s33, v9
	v_subrev_nc_u32_e32 v47, s1, v47
	v_lshl_add_u32 v48, v12, 1, 2
	v_add_nc_u32_e32 v12, s28, v11
	v_mad_u64_u32 v[10:11], null, s33, v51, v[10:11]
	s_add_i32 s30, s31, 64
	s_add_i32 s31, s29, -2
	s_mov_b32 s4, s12
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s24, s14
	v_mad_u64_u32 v[11:12], null, s33, v12, v[9:10]
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s30, v49
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, s30, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v51, v38, v47
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s30, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s31, s31, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v77, v48, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v78, v51, s[24:27], 0 offen
	buffer_load_u16 v79, v51, s[24:27], 0 offen offset:4
	buffer_load_u16 v80, v51, s[24:27], 0 offen offset:8
	buffer_load_u16 v81, v51, s[24:27], 0 offen offset:12
	buffer_load_u16 v82, v51, s[24:27], 0 offen offset:16
	buffer_load_u16 v83, v51, s[24:27], 0 offen offset:20
	buffer_load_u16 v84, v51, s[24:27], 0 offen offset:24
	buffer_load_u16 v85, v51, s[24:27], 0 offen offset:28
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[61:62], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[67:68], v[65:66], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[69:70], v[71:72], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[75:76], v[73:74], v[51:58] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v12, s30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s30, s30, 32
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s31, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[59:60], v12, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v56, v58
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b16 v36, v9 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[59:60]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v63, 16, v80
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v58, 16, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v48, 2, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v65, 16, v82
	v_lshlrev_b32_e32 v67, 16, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v58, v53
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v29, v53, v63
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v52, v58, v52 :: v_dual_add_nc_u32 v47, s35, v47
	v_dual_mul_f32 v56, v58, v56 :: v_dual_lshlrev_b32 v61, 16, v78
	v_dual_mul_f32 v57, v58, v57 :: v_dual_lshlrev_b32 v62, 16, v79
	v_dual_mul_f32 v55, v58, v55 :: v_dual_lshlrev_b32 v64, 16, v81
	v_dual_mul_f32 v51, v58, v51 :: v_dual_lshlrev_b32 v68, 16, v85
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v66, 16, v83
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v58, v12
	v_mul_f32_e32 v54, v58, v54
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v52, v64, v28
	v_fmac_f32_e32 v25, v51, v61
	v_fmac_f32_e32 v27, v55, v65
	v_fma_f32 v24, v12, v62, v24
	v_fma_f32 v26, v54, v66, v26
	v_fmac_f32_e32 v31, v57, v67
	v_fma_f32 v30, v56, v68, v30
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v7, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v1, 24, v33
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v2, 0x218, v33, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v3, v2, 24, 0
	v_add_nc_u32_e32 v4, 0, v2
	v_xad_u32 v7, v2, 16, 0
	v_xad_u32 v8, v2, 8, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v2, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_or3_b32 v1, v35, v1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v9, v2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v5, v1, 8, 0
	v_add_nc_u32_e32 v6, 0, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[10:11], v4 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[33:34], v5
	ds_load_b64 v[35:36], v6
	v_xad_u32 v4, v1, 24, 0
	v_xad_u32 v1, v1, 16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[37:38], v8 offset:4096
	ds_load_b64 v[39:40], v3 offset:4096
	ds_load_b64 v[41:42], v7 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[43:44], v4
	ds_load_b64 v[45:46], v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v5, v2
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v7, v2
	v_mov_b32_e32 v8, v2
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[35:36], v[10:11], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[33:34], v[37:38], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[45:46], v[41:42], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[43:44], v[39:40], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v14, v2
	v_cvt_f32_i32_e32 v1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v6, v8
	v_cvt_f32_i32_e32 v7, v9
.LBB0_6:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v8, s29, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s29, -1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s28, s29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s0, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s0, s0, s19
	s_mov_b32 s11, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v8, s1, v8, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s18, s0
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v9, s0, v21, 1
	v_add_lshl_u32 v10, s0, v23, 1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_mov_b32 s8, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v11, s0, v22, 1
	v_add_lshl_u32 v12, s0, v20, 1
	v_add_lshl_u32 v19, s0, v19, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v18, s0, v18, 1
	v_add_lshl_u32 v17, s0, v17, 1
	v_add_lshl_u32 v16, s0, v16, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_clause 0x7
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.h, 0
	v_mov_b32_e32 v22, 0x7632
	v_dual_mov_b32 v21, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v15, v15, s19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.h, v20.h
	v_mov_b16_e32 v23.h, v20.h
	v_mov_b16_e32 v32.h, v20.h
	v_mov_b16_e32 v34.h, v20.h
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v2, v8
	v_mul_f32_e32 v4, v4, v8
	v_mul_f32_e32 v5, v5, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v1, v1, v8 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v19
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v14, v14, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v19, v27
	v_fma_f32 v5, v5, v12, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v6, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v10, v24
	v_fma_f32 v4, v4, v11, v29
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v27, v2, s2
	v_cndmask_b32_e64 v5, v28, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v24, v1, s2
	v_cndmask_b32_e64 v4, v29, v4, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v2.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v2, v2
	v_mov_b16_e32 v20.l, v1.h
	v_mov_b16_e32 v32.l, v4.h
	v_and_b32_e32 v12, 1, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v18, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v2, v12, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v26, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v7, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v14, v9, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v20
	v_mov_b16_e32 v20.l, v5.h
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v16, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v25, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v32
	v_and_b32_e32 v10, 1, v20
	v_mov_b16_e32 v20.l, v3.h
	v_add3_u32 v1, v1, v9, 0x7fff
	v_mov_b16_e32 v23.l, v8.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v30, v7, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v5, v10, 0x7fff
	v_and_b32_e32 v14, 1, v20
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_and_b32_e32 v11, 1, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v17, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v0, v4, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v8, v8, v11, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v31, v6, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v4, v4
	v_add3_u32 v3, v3, v14, 0x7fff
	v_mov_b16_e32 v20.l, v7.h
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	v_mov_b16_e32 v34.l, v6.h
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s1
	v_cmp_o_f32_e64 s6, v6, v6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_and_b32_e32 v9, 1, v34
	v_cndmask_b32_e32 v8, 0x3276, v22, vcc_lo
	v_cmp_o_f32_e64 s5, v7, v7
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v4, v2, v1, vcc_lo
	v_add3_u32 v3, v6, v9, 0x7fff
	v_dual_cndmask_b32 v6, 0x1054, v21 :: v_dual_and_b32 v9, 1, v20
	v_lshl_or_b32 v8, v8, 8, v8
	v_cndmask_b32_e32 v1, v1, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s6
	v_lshl_or_b32 v6, v6, 8, v6
	v_add3_u32 v7, v7, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x540054, v6
	v_and_b32_e32 v6, 0x760076, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s5
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_and_or_b32 v7, 0x78, v13, s18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s18, s10
	v_lshl_or_b32 v2, v5, 4, v5
	v_lshl_or_b32 v5, v6, 4, v6
	v_dual_cndmask_b32 v6, v0, v3 :: v_dual_cndmask_b32 v3, v3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v5, 0x7060706, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v1, v4, v5
	v_perm_b32 v2, v6, v3, v2
	v_perm_b32 v3, v6, v3, v5
	v_add_lshl_u32 v4, v7, v15, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 86
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3624
; TotalNumSgprs: 38
; NumVgprs: 86
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
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
