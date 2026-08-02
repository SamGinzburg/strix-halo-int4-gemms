	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v42, 7, v0
	v_lshrrev_b32_e32 v34, 3, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v44, 1, v0
	v_lshlrev_b32_e32 v16, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v40, 15, v0
	v_lshlrev_b32_e32 v33, 3, v42
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v36, 64, v34
	v_or_b32_e32 v35, 0xc0, v34
	v_and_b32_e32 v43, 0xe0, v0
	v_lshlrev_b32_e32 v45, 6, v40
	v_lshlrev_b32_e32 v41, 2, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v17, 56, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v46, 5, v43
	v_xor_b32_e32 v16, v16, v17
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s20, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_mov_b64 s[16:17], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s18, s14
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v47, 0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_load_b32 s9, s[0:1], 0x38
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s8
	s_mul_hi_u32 s2, s8, s10
	s_abs_i32 s10, s4
	s_add_i32 s8, s8, s2
	s_xor_b32 s2, s4, s6
	s_mul_hi_u32 s8, s10, s8
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s11, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s19, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s19, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s7
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s19, s15
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s7, s11, s8
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s8, s9, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s26, s7, s2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s7, s9, s8
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s20, s26, s2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s25, s7, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s20, s6
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[3:4], null, s25, v34, v[33:34]
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s3, s3, 6
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s4, s4, s6
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v1, s3, v33
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s23, s20, 8
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s22, s4, 6
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mul_lo_u32 v5, s25, v36
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s25, v1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[1:2], null, s22, s25, v[3:4]
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mul_lo_u32 v6, s25, v35
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s9, 2
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_mul_i32 s4, s23, s25
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s24, -1, 0
	s_cmp_gt_i32 s9, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v7, s3, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s5, -1, 0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_lshl_b32 s6, s25, 7
	s_add_i32 s4, s4, s3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v4, s4, v3
	v_add3_u32 v2, s4, s6, v3
	v_add3_u32 v3, v6, v33, s4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add3_u32 v5, v5, v33, s4
	.loc	1 156 22 is_stmt 0              ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v8, 0x80000000, v4, vcc_lo
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v12, 0x80000000, v2, vcc_lo
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v10, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v14, 0x80000000, v3, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[6:7], v6, s[12:15], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x3
	buffer_load_b64 v[8:9], v8, s[16:19], 0 offen
	buffer_load_b64 v[10:11], v10, s[16:19], 0 offen
	buffer_load_b64 v[12:13], v12, s[16:19], 0 offen
	buffer_load_b64 v[14:15], v14, s[16:19], 0 offen
	s_mov_b32 s4, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s9, 0x82
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v47, v[6:7] offset:16384
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v47, v[8:9], v[10:11] offset1:8
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v47, v[12:13], v[14:15] offset0:16 offset1:24
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v48, s25, v33
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s5, s3, 64
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s5, v48
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v1, s5, v1
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v4, 64, v4
	.loc	1 156 22 is_stmt 0              ; generate_amdgcn.py:156:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_mov_b32 s5, s4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v5, 64, v5
	.loc	1 156 30 is_stmt 0              ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v2, 64, v2
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	buffer_load_b64 v[37:38], v1, s[12:15], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v3, 64, v3
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b64 v[85:86], v4, s[16:19], 0 offen
	buffer_load_b64 v[87:88], v1, s[16:19], 0 offen
	buffer_load_b64 v[89:90], v2, s[16:19], 0 offen
	buffer_load_b64 v[91:92], v3, s[16:19], 0 offen
	v_lshlrev_b32_e32 v1, 2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 56, v1
	v_and_or_b32 v39, 0x438, v1, v45
	v_or3_b32 v93, v46, v2, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v1, 8, v39
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v49, 0, v39
	v_xor_b32_e32 v9, 16, v39
	v_xor_b32_e32 v11, 24, v39
	v_xor_b32_e32 v2, 8, v93
	v_add_nc_u32_e32 v50, 0, v93
	v_add_nc_u32_e32 v51, 0, v1
	v_xor_b32_e32 v10, 16, v93
	v_add_nc_u32_e32 v53, 0, v9
	v_add_nc_u32_e32 v52, 0, v2
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[57:60], v49 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[61:64], v50 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v8, s11
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[65:68], v51 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[69:72], v52 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v5, s8 :: v_dual_add_nc_u32 v54, 0, v10
	v_xor_b32_e32 v12, 24, v93
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v53 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[77:80], v54 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v2, s5
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_add_nc_u32_e32 v56, 0, v12
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v55, 0, v11
	v_xor_b32_e32 v94, 32, v39
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s4, s25, 63
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s4, s4, 6
.Ltmp13:
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[59:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[59:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[61:64], v55 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[81:84], v56 offset1:16
	v_xor_b32_e32 v59, 32, v93
	v_xor_b32_e32 v58, 40, v39
	v_xor_b32_e32 v60, 40, v93
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v57, 0, v94
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v59, 0, v59
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v58, 0, v58
	v_add_nc_u32_e32 v60, 0, v60
	ds_load_2addr_stride64_b64 v[65:68], v57 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[69:72], v59 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v58 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[77:80], v60 offset1:16
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s4, s4, 2
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[61:62], v[25:32] neg_lo:[1,1,0]
	v_xor_b32_e32 v61, 48, v39
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[63:64], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[63:64], v[1:8] neg_lo:[1,1,0]
	v_xor_b32_e32 v63, 48, v93
	v_xor_b32_e32 v39, 56, v39
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v61, 0, v61
	v_xor_b32_e32 v64, 56, v93
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_eq_u32 s4, 2
	v_add_nc_u32_e32 v63, 0, v63
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v62, 0, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v64, 0, v64
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[67:68], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[65:68], v61 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[69:72], v63 offset1:16
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v62 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[77:80], v64 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v47, v[37:38] offset:16384
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v47, v[85:86], v[87:88] offset1:8
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v47, v[89:90], v[91:92] offset0:16 offset1:24
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[73:74], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_lshl_b32 s5, s26, 8
	s_lshl_b32 s2, s2, 8
	v_or_b32_e32 v37, s5, v34
	v_or_b32_e32 v35, s5, v35
	v_or_b32_e32 v36, s5, v36
	v_add_nc_u32_e32 v39, s22, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v37, s2, v37
	v_subrev_nc_u32_e32 v38, s2, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v36, s2, v36
	s_add_i32 s2, s3, 0x80
	s_add_i32 s3, s4, -2
	v_mad_u64_u32 v[34:35], null, s25, v37, v[33:34]
	v_or_b32_e32 v65, 0x80, v37
	v_mad_u64_u32 v[35:36], null, s25, v36, v[33:34]
	v_mad_u64_u32 v[36:37], null, s25, v38, v[33:34]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[37:38], null, s25, v65, v[33:34]
	v_mad_u64_u32 v[38:39], null, s25, v39, v[33:34]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v33, s2, v38
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v48
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v39, s2, v34
	v_add_nc_u32_e32 v65, s2, v35
	v_add_nc_u32_e32 v66, s2, v37
	.loc	1 156 22 is_stmt 0              ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v67, s2, v36
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[77:78], v33, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x3
	buffer_load_b64 v[79:80], v39, s[16:19], 0 offen
	buffer_load_b64 v[81:82], v65, s[16:19], 0 offen
	buffer_load_b64 v[83:84], v66, s[16:19], 0 offen
	buffer_load_b64 v[85:86], v67, s[16:19], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[65:68], v49 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[69:72], v50 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v51 offset0:32 offset1:36
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s3, s3, -1
	s_add_i32 s2, s2, 64
	s_cmp_lg_u32 s3, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[67:68], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v52 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[69:72], v53 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v54 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v55 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v56 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[69:72], v57 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v59 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v58 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v60 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[69:72], v61 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v63 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[73:76], v62 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v64 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v47, v[77:78] offset:16384
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v47, v[79:80], v[81:82] offset1:8
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v47, v[83:84], v[85:86] offset0:16 offset1:24
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v33, v31 :: v_dual_mov_b32 v34, v30
	v_mov_b32_e32 v35, v25
	s_branch .LBB0_6
.LBB0_5:
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v14, v8
	v_dual_mov_b32 v1, v8 :: v_dual_mov_b32 v24, v15
	v_mov_b32_e32 v6, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v8 :: v_dual_mov_b32 v22, v13
	v_mov_b32_e32 v23, v14
	v_dual_mov_b32 v21, v12 :: v_dual_mov_b32 v20, v11
	v_dual_mov_b32 v19, v10 :: v_dual_mov_b32 v18, v9
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v5, v8
.LBB0_6:                                ; %._crit_edge
	s_load_b256 s[0:7], s[0:1], 0x10
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s24
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.7:                                ; %._crit_edge._crit_edge
.Ltmp14:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v25, 2, v0
	s_cbranch_execz .LBB0_10
.Ltmp15:
; %bb.8:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v41, v25
	s_branch .LBB0_11
.LBB0_9:
                                        ; implicit-def: $vgpr25
.LBB0_10:
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v25, v35 :: v_dual_and_b32 v30, 56, v41
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v37, 0x438, v41, v45
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v31, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or3_b32 v38, v46, v30, v45
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v30, v34 :: v_dual_add_nc_u32 v33, 0, v37
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v49, v37, 8, 0
	v_xad_u32 v65, v37, 32, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v39, 0, v38
	v_xad_u32 v53, v38, 8, 0
	v_xad_u32 v61, v38, 16, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v69, v37, 24, 0
	ds_load_2addr_stride64_b64 v[33:36], v33 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[45:48], v39 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[49:52], v49 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[53:56], v53 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v39, v37, 16, 0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xad_u32 v73, v38, 56, 0
	v_xad_u32 v77, v38, 48, 0
	v_xad_u32 v85, v38, 32, 0
	v_xad_u32 v90, v38, 40, 0
	v_xad_u32 v38, v38, 24, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[57:60], v39 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[61:64], v61 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[65:68], v65 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v69 offset0:32 offset1:36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[73:76], v73 offset1:16
	ds_load_2addr_stride64_b64 v[77:80], v77 offset1:16
	ds_load_2addr_stride64_b64 v[81:84], v38 offset1:16
	ds_load_2addr_stride64_b64 v[85:88], v85 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v89, v37, 40, 0
	v_xad_u32 v38, v37, 56, 0
	v_xad_u32 v37, v37, 48, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[33:36], v90 offset1:16
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[45:48], v89 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[49:50], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[51:52], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[49:52], v37 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[57:58], v[25:32] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[53:56], v38 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[59:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[59:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[47:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[49:50], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[51:52], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[51:52], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[53:54], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[55:56], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_dual_mov_b32 v35, v25 :: v_dual_mov_b32 v34, v30
	v_mov_b32_e32 v33, v31
.LBB0_11:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v25, 0x100, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v50, v5
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s9, s1, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v38, 4, v25
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s8, s0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v49, v4
	v_cvt_f32_i32_e32 v4, v7
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v36, v0, 4, 1
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or3_b32 v5, v38, v40, s22
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v37, 1, v43
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v47, v26
	v_cvt_f32_i32_e32 v26, v20
	v_cvt_f32_i32_e32 v20, v22
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v3
	v_cvt_f32_i32_e32 v3, v6
	v_cvt_f32_i32_e32 v6, v8
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v7, v5, s[8:11], 0 offen
	v_or_b32_e32 v5, 64, v5
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v48, v28
	v_cvt_f32_i32_e32 v39, v15
	v_cvt_f32_i32_e32 v45, v35
	v_cvt_f32_i32_e32 v15, v24
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s9, s3, 0xffff
	s_mov_b32 s8, s2
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v46, v33
	v_cvt_f32_i32_e32 v33, v18
	v_cvt_f32_i32_e32 v18, v23
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v27, v27
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s21, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s21, s1
	s_ashr_i32 s1, s1, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s22, s1
.Ltmp17:
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v7
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v5
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v5, v36, v37, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v28, 8, v5
	v_or_b32_e32 v36, 16, v5
	v_or_b32_e32 v24, 4, v5
	v_or_b32_e32 v35, 12, v5
	v_or_b32_e32 v38, 24, v5
	s_clause 0x4
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v23, v5, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	v_or_b32_e32 v37, 20, v5
	buffer_load_u16 v38, v38, s[8:11], 0 offen
	v_or_b32_e32 v51, 28, v5
	v_or_b32_e32 v52, 0x100, v5
	v_or_b32_e32 v54, 0x108, v5
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	v_or_b32_e32 v56, 0x110, v5
	buffer_load_u16 v51, v51, s[8:11], 0 offen
	v_or_b32_e32 v58, 0x118, v5
	s_clause 0x2
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v54, v54, s[8:11], 0 offen
	buffer_load_u16 v56, v56, s[8:11], 0 offen
	v_or_b32_e32 v53, 0x104, v5
	v_or_b32_e32 v55, 0x10c, v5
	v_or_b32_e32 v57, 0x114, v5
	s_clause 0x3
	buffer_load_u16 v58, v58, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v55, v55, s[8:11], 0 offen
	buffer_load_u16 v57, v57, s[8:11], 0 offen
	v_or_b32_e32 v5, 0x11c, v5
	buffer_load_u16 v5, v5, s[8:11], 0 offen
.Ltmp18:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s8, s4
.Ltmp20:
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v59, 16, v28
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v61, 16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v28, v7, v59
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v28, v28, v19
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v23, v7, v36 :: v_dual_lshlrev_b32 v38, 16, v38
	v_dual_mul_f32 v65, v7, v38 :: v_dual_lshlrev_b32 v60, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v23, v23, v21
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v63, v7, v60
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v18, v65, v18 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v21, v8, v60 :: v_dual_mul_f32 v26, v63, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v64, v7, v37 :: v_dual_and_b32 v31, 16, v0
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v60, v21, v12 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v35, v7, v61 :: v_dual_and_b32 v30, 0x1f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v20, v64, v20
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v66, v7, v51
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v24, 16, v24
.Ltmp21:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v31, 7, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v15, v66, v15 :: v_dual_mul_f32 v62, v7, v24
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v19, v8, v24
	v_dual_mul_f32 v24, v8, v59 :: v_dual_mul_f32 v33, v62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v10, v19, v10 :: v_dual_mul_f32 v59, v24, v11
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v11, 16, v58
	v_lshlrev_b32_e32 v21, 16, v52
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v52, v11, v7 :: v_dual_lshlrev_b32 v19, 16, v57
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v35, v35, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v17, v8, v61 :: v_dual_mul_f32 v24, v19, v7
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v52, v4
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v52, v8, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v12, v17, v9
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v5
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v5, v21, v7
	v_mul_f32_e32 v21, v8, v21
	v_mul_f32_e32 v57, v9, v7
	v_mul_f32_e32 v9, v8, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v38, v9, v32
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v32, 16, v53
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v17, v5, v1
	v_dual_mul_f32 v5, v24, v3 :: v_dual_mul_f32 v24, v21, v45
	v_mul_f32_e32 v3, v57, v6
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v1, v8, v36
	v_mul_f32_e32 v6, v8, v37
	v_mul_f32_e32 v51, v8, v51
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v9, 16, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v21, v51, v16 :: v_dual_mul_f32 v16, v6, v14
	v_dual_mul_f32 v14, v1, v13 :: v_dual_lshlrev_b32 v1, 16, v56
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v6, v7, v1 :: v_dual_lshlrev_b32 v13, 16, v54
	v_mul_f32_e32 v1, v8, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v19, v8, v19 :: v_dual_mul_f32 v6, v6, v50
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v36, v19, v34 :: v_dual_mul_f32 v19, v52, v39
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v39, v7, v9
	v_mul_f32_e32 v9, v8, v9
	v_dual_mul_f32 v11, v8, v11 :: v_dual_mul_f32 v34, v7, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v37, v11, v46
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v11, v7, v13
	v_mul_f32_e32 v13, v8, v13
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v7, v39, v49
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v39, |v6|, |v5|, |v4|
.Ltmp24:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v11, v11, v22
	v_mul_f32_e32 v22, v34, v2
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v2, v8, v32
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v34, v1, v29
	v_mul_f32_e32 v32, v9, v48
	v_mul_f32_e32 v29, v13, v27
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v1, |v12|, |v10|
.Ltmp26:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v27, v2, v47
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v60|, |v14|, |v16|
	v_max3_f32 v13, |v34|, |v36|, |v37|
	v_max3_f32 v8, |v19|, |v21|, |v24|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v9, |v27|, |v29|, |v32|
	v_max3_f32 v1, v1, |v59|, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v2, v9, v13, |v38|
	v_max3_f32 v13, |v22|, |v11|, |v7|
	v_max3_f32 v9, |v18|, |v15|, |v17|
	v_max3_f32 v1, v1, v8, v2
	v_max_f32_e64 v2, |v35|, |v33|
	v_max3_f32 v8, |v26|, |v23|, |v20|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v2, |v28|, v8
	v_max3_f32 v8, v13, v39, |v3|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v13, 8, v0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v9, v8
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v8, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 0xf0, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v1, v1, v8
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v8, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v2, v2, v8
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v8, 4, v42
	v_lshl_add_u32 v42, v42, 8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v39, v8, v9
	v_add3_u32 v39, v42, v39, v13
	ds_store_b64 v39, v[1:2]
	v_lshl_or_b32 v1, v43, 3, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v9
	v_lshrrev_b32_e32 v9, 1, v25
	v_add3_u32 v1, 0, v13, v1
	v_lshl_add_u32 v13, v13, 3, 0
	ds_load_b64 v[1:2], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v8, v1
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v8
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v8
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v1, v8 :: v_dual_mov_b32 v8, v2
	v_max_f32_e32 v2, v2, v2
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v2, v2, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v8, v2
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v2, v2, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v8, v2
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v2, v2, v8
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v8, 2, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v13, v8, v9
	ds_store_b64 v8, v[1:2]
	v_lshlrev_b32_e32 v2, 3, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v1, 0, v2, v9
	ds_load_b64 v[8:9], v1
.Ltmp49:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v1, v8, v8 :: v_dual_max_f32 v8, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v8, 0x2b8cbccc, v8
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v13, v9
	v_fma_f32 v39, -v9, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v39, v13
	v_div_scale_f32 v39, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v42, v39, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v9, v42, v39
	v_fmac_f32_e32 v42, v43, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v42, v39
	v_div_fmas_f32 v9, v9, v13, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v1, v9, 0x40e00000, v1
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v8
	v_rcp_f32_e32 v13, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v9, v13, 1.0
	v_fmac_f32_e32 v13, v39, v13
	v_div_scale_f32 v39, vcc_lo, v8, 0x40e00000, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v39, v13
	v_fma_f32 v43, -v9, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v13
	v_fma_f32 v9, -v9, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v13, v42
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v13.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v9, 0x40e00000, v8
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v13.h, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v8, v9, 0x7fff
	v_add3_u32 v13, v1, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v1.h, v8.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0xffff0000, v13
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v9, null, v39, v39, v12
	v_rcp_f32_e32 v13, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v9, v13, 1.0
	v_fmac_f32_e32 v13, v42, v13
	v_div_scale_f32 v42, vcc_lo, v12, v39, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v42, v13 :: v_dual_and_b32 v8, 0xffff0000, v8
	v_fma_f32 v44, -v9, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v13
	v_fma_f32 v9, -v9, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v9, v9, v13, v43
	v_div_fixup_f32 v9, v9, v39, v12
	v_div_scale_f32 v12, null, v39, v39, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v13, v12
	v_fma_f32 v42, -v12, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v42, v13
	v_div_scale_f32 v42, vcc_lo, v10, v39, v10
	v_mul_f32_e32 v43, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v12, v43, v42
	v_fmac_f32_e32 v43, v44, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v43, v42
	v_div_fmas_f32 v12, v12, v13, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v10, v12, v39, v10
	v_div_scale_f32 v12, null, v39, v39, v59
	v_rcp_f32_e32 v13, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v42, v13
	v_div_scale_f32 v42, vcc_lo, v59, v39, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v13
	v_fma_f32 v44, -v12, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v13
	v_fma_f32 v12, -v12, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v12, v13, v43
	v_div_scale_f32 v13, null, v39, v39, v60
	v_rcp_f32_e32 v42, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v13, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v60, v39, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v13, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v45, v42
	v_div_fixup_f32 v12, v12, v39, v59
	v_fma_f32 v13, -v13, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v42, v44
	v_div_scale_f32 v42, null, v39, v39, v14
	v_div_fixup_f32 v13, v13, v39, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v14, v39, v14
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v14, v42, v39, v14
	v_div_scale_f32 v42, null, v39, v39, v16
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v16, v39, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v16, v42, v39, v16
	v_div_scale_f32 v42, null, v39, v39, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v19, v39, v19
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v19, v42, v39, v19
	v_div_scale_f32 v42, null, v39, v39, v21
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v21, v39, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v21, v42, v39, v21
	v_div_scale_f32 v42, null, v39, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v24, v39, v24
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v24, v42, v39, v24
	v_div_scale_f32 v42, null, v39, v39, v27
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v27, v39, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v27, v42, v39, v27
	v_div_scale_f32 v42, null, v39, v39, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v29, v39, v29
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v29, v42, v39, v29
	v_div_scale_f32 v42, null, v39, v39, v32
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v32, v39, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v32, v42, v39, v32
	v_div_scale_f32 v42, null, v39, v39, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v34, v39, v34
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v34, v42, v39, v34
	v_div_scale_f32 v42, null, v39, v39, v36
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v36, v42, v39, v36
	v_div_scale_f32 v42, null, v39, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v37, v39, v37
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v42, v39, v37
	v_div_scale_f32 v42, null, v39, v39, v38
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v38, v42, v39, v38
	v_div_scale_f32 v39, null, v8, v8, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v35, v8, v35
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v39, v8, v35
	v_div_scale_f32 v39, null, v8, v8, v33
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v33, v8, v33
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v33, v39, v8, v33
	v_div_scale_f32 v39, null, v8, v8, v28
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v28, v8, v28
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v39, v8, v28
	v_div_scale_f32 v39, null, v8, v8, v26
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v26, v8, v26
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v39, v8, v26
	v_div_scale_f32 v39, null, v8, v8, v23
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v23, v8, v23
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v23, v39, v8, v23
	v_div_scale_f32 v39, null, v8, v8, v20
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v20, v8, v20
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v39, v8, v20
	v_div_scale_f32 v39, null, v8, v8, v18
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v18, v8, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v39, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v42, v44
	v_div_fixup_f32 v18, v39, v8, v18
	v_div_scale_f32 v39, null, v8, v8, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v15, v8, v15
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v39, v8, v15
	v_div_scale_f32 v39, null, v8, v8, v17
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v17, v8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v39, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v42, v44
	v_div_fixup_f32 v17, v39, v8, v17
	v_div_scale_f32 v39, null, v8, v8, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v22, v8, v22
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v39, v8, v22
	v_div_scale_f32 v39, null, v8, v8, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v11, v8, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v39, -v39, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v42, v44
	v_div_fixup_f32 v11, v39, v8, v11
	v_div_scale_f32 v39, null, v8, v8, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v7, v8, v7
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v7, v39, v8, v7
	v_div_scale_f32 v39, null, v8, v8, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v46, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v6, v8, v6
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v39, v8, v6
	v_div_scale_f32 v39, null, v8, v8, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v47, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v5, v8, v5
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v39, v8, v5
	v_div_scale_f32 v39, null, v8, v8, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v48, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v4, v8, v4
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v43
	v_div_fmas_f32 v39, v39, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v39, v8, v4
	v_div_scale_f32 v39, null, v8, v8, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v39
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v49, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v3, v8, v3
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v39, v44, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v39, v39, v42, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v15
	v_cvt_i32_f32_e32 v44, v22
	v_and_b32_e32 v22, 15, v26
	v_and_b32_e32 v26, 15, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v39, v8, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v9
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v12
	v_rndne_f32_e32 v12, v13
	v_rndne_f32_e32 v13, v14
	v_rndne_f32_e32 v14, v16
	v_rndne_f32_e32 v16, v19
	v_rndne_f32_e32 v19, v21
	v_rndne_f32_e32 v21, v24
	v_rndne_f32_e32 v24, v27
	v_rndne_f32_e32 v27, v29
	v_rndne_f32_e32 v29, v32
	v_rndne_f32_e32 v32, v34
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v23, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v50, v3
	v_and_b32_e32 v3, 15, v8
	v_and_b32_e32 v6, 15, v12
	v_and_b32_e32 v8, 15, v14
	v_and_b32_e32 v12, 15, v24
	v_and_b32_e32 v14, 15, v29
	v_and_b32_e32 v29, 15, v42
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 0x3000, v23
	v_lshlrev_b32_e32 v24, 4, v40
	v_and_b32_e32 v42, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v15, 15, v32
	v_and_b32_e32 v32, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v43, 0x200, v41
	v_xor_b32_e32 v24, v24, v42
	v_add3_u32 v23, 0, v23, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v27, v27
	v_and_b32_e32 v4, 15, v9
	v_and_b32_e32 v5, 15, v10
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v23, v23, v43, v24
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v13
	v_and_b32_e32 v11, 15, v21
	v_and_b32_e32 v13, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v23, v[3:6]
	ds_store_b128 v23, v[11:14] offset:1024
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0x60, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, 0x3600, v3, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v37, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v38, v20
	v_and_b32_e32 v10, 15, v19
	v_and_b32_e32 v19, 15, v35
	v_and_b32_e32 v20, 15, v33
	v_and_b32_e32 v21, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v24, v3, v30, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v9, 15, v16
	v_and_b32_e32 v16, 15, v34
	v_and_b32_e32 v33, 15, v44
	v_and_b32_e32 v34, 15, v45
	v_and_b32_e32 v35, 15, v46
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v24
	ds_load_b128 v[11:14], v24 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[19:22]
	ds_store_b128 v23, v[32:35] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v24
	ds_load_b128 v[30:33], v24 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s20, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 15, v38
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s0, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v36
	v_and_b32_e32 v18, 15, v37
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v23, v[7:10]
	ds_store_b128 v23, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v24
	ds_load_b128 v[15:18], v24 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, v11, 4, v3
	v_lshl_or_b32 v11, v30, 4, v19
.Ltmp50:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v19, 4, v0
.Ltmp51:
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v31, 4, v20
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v6, v14, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v20, s1, v19
	s_lshl_b32 s1, s1, 5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 15, v39
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v32, 4, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v36, 15, v47
	v_and_b32_e32 v37, 15, v48
	v_and_b32_e32 v38, 15, v49
	v_and_b32_e32 v39, 15, v50
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v2, v20
	v_add3_u32 v20, v20, s1, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v6.l
	v_and_b16 v2.h, 0xff, v5.l
	.loc	1 83 18 is_stmt 1               ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[26:29]
	ds_store_b128 v23, v[36:39] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v24
	ds_load_b128 v[34:37], v24 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v4.l
	v_and_b16 v2.h, 0xff, v3.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v8, v16, 4, v8
	v_lshl_or_b32 v14, v33, 4, v22
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s21, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s21, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v8.l
	v_and_b16 v2.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v36, 4, v28
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v2.h, 0xff, v13.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v21, s[8:11], 0 offen
	v_or_b16 v3.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v12.l
	v_and_b16 v2.h, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v3.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v18.l
	v_and_b16 v2.h, 0xff, v17.l
	v_or_b16 v4.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v16.l
	v_and_b16 v2.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v2.h, v2.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 63, s22
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v20, s[8:11], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v40
	v_lshrrev_b32_e32 v4, 2, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v2, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v3, 0, v3, v4
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	ds_store_b32 v3, v1
	v_and_b32_e32 v1, 0x7c, v41
	v_and_b32_e32 v3, 2, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v0, v2, s20, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, 0, v1, v3
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v1
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp52:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 95
		.amdhsa_next_free_sgpr 27
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 95
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 27
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9472
; TotalNumSgprs: 29
; NumVgprs: 95
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 29
; NumVGPRsForWavesPerEU: 95
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x8a DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x64 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x6d:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x79:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x85:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     29
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     95
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
