	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v19, 4, v0
	s_load_b32 s28, s[0:1], 0x38
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_lshlrev_b32_e32 v134, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 7
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 31, v0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v17, 2, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v1
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s12, s6, s5
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s12, s6
	s_load_b128 s[12:15], s[0:1], 0x0
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s9, s8
	v_rcp_iflag_f32_e32 v2, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_sub_i32 s14, 0, s8
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mul_lo_u32 v5, s10, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s14, s14, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s9, s14
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s18, s2, s8
	s_ashr_i32 s22, s9, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s9, s2, 1
	s_sub_i32 s19, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s19, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s2, s9, s2
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s8, s11, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s24, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s2, s22
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s9, s8, s24
	v_mad_u64_u32 v[3:4], null, s8, v2, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s8, s26, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s28, 31
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s7, s8, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s24, v2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s2, s28, s5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s4, s7
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s27, s2, 1
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s8, 8
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v6
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s28, 1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v3, s9, s2, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s23, -1, 0
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v4, v5, v17, s20
	.loc	1 111 22 is_stmt 0              ; generate_amdgcn.py:111:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 117 22 is_stmt 1              ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, vcc_lo
	s_cmp_gt_i32 s28, 33
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s5, s10, s24
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s24, 16
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add_nc_u32_e32 v5, s5, v4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s11, v3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s4, v2
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v8, s11, 5, v3
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_lshl_b32 s25, s10, 4
	.loc	1 111 22 is_stmt 0              ; generate_amdgcn.py:111:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 117 22 is_stmt 1              ; generate_amdgcn.py:117:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v7
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v10, s5, s25, v4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v9, s11, v8
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_b32 v14, v5, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[4:5], v3, s[16:19], 0 offen
	buffer_load_b64 v[6:7], v6, s[16:19], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	s_cmpk_gt_i32 s28, 0x41
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v3, 0x80000000, v10 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_b32 v15, v3, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[10:11], v8, s[16:19], 0 offen
	buffer_load_b64 v[12:13], v9, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v8, 0, v134
	s_mov_b32 s18, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v18, 0x70, v9
	scratch_store_b32 off, v9, off offset:128 ; 4-byte Folded Spill
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v16, v8, v134
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v8, v14 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v16, v[4:5], v[6:7] offset1:16
	v_or_b32_e32 v9, v18, v3
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v8, v15 offset:18432
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v16, v[10:11], v[12:13] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v197, v18, v3
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v4, 0x100, v197
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x200, v197
	scratch_store_b32 off, v4, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x300, v197
	scratch_store_b32 off, v4, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x400, v197
	scratch_store_b32 off, v4, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x500, v197
	scratch_store_b32 off, v4, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x600, v197
	scratch_store_b32 off, v4, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x700, v197
	scratch_store_b32 off, v4, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x800, v197
	scratch_store_b32 off, v4, off          ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x900, v197
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa00, v197
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb00, v197
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc00, v197
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd00, v197
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe00, v197
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf00, v197
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x80, v197
	scratch_store_b32 off, v4, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x180, v197
	scratch_store_b32 off, v4, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x280, v197
	scratch_store_b32 off, v4, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x380, v197
	scratch_store_b32 off, v4, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x480, v197
	scratch_store_b32 off, v4, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x580, v197
	scratch_store_b32 off, v4, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x680, v197
	scratch_store_b32 off, v4, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x780, v197
	scratch_store_b32 off, v4, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x880, v197
	scratch_store_b32 off, v4, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x980, v197
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa80, v197
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb80, v197
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc80, v197
	scratch_store_b32 off, v4, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd80, v197
	scratch_store_b32 off, v4, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe80, v197
	scratch_store_b32 off, v4, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf80, v197
	scratch_store_b32 off, v4, off offset:120 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr197
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	v_and_or_b32 v196, v19, 16, v3
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s0, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v18, off offset:132
	scratch_store_b32 off, v19, off offset:136
	scratch_store_b32 off, v0, off offset:124
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v34, 0 :: v_dual_lshlrev_b32 v3, 1, v2
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v136, s27, v2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s27, s27, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s18, s22, 8
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v3, s3, 5, v3
	s_lshl_b32 s3, s26, 8
	s_add_i32 s26, s24, 32
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s27, 4
	v_dual_mov_b32 v37, v34 :: v_dual_add_nc_u32 v2, s26, v2
	v_dual_mov_b32 v35, v34 :: v_dual_add_nc_u32 v4, 0x41, v3
	v_dual_mov_b32 v38, v34 :: v_dual_add_nc_u32 v3, 64, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v2, s10, v2
	v_mul_lo_u32 v4, s11, v4
	v_sub_nc_u32_e64 v5, s1, 3 clamp
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, s11, v3
	v_dual_mov_b32 v36, v34 :: v_dual_lshlrev_b32 v135, 3, v0
	v_mov_b32_e32 v39, v34
	v_readfirstlane_b32 s10, v5
	v_add3_u32 v137, v2, s20, v17
	v_add3_u32 v4, v4, s3, v1
	v_mov_b32_e32 v40, v34
	v_add3_u32 v1, v3, s3, v1
	v_mov_b32_e32 v41, v34
	v_mov_b32_e32 v58, v34
	v_subrev_nc_u32_e32 v138, s18, v4
	v_mov_b32_e32 v59, v34
	v_subrev_nc_u32_e32 v139, s18, v1
	v_mov_b32_e32 v60, v34
	v_mov_b32_e32 v61, v34
	v_mov_b32_e32 v62, v34
	v_mov_b32_e32 v63, v34
	v_mov_b32_e32 v64, v34
	v_mov_b32_e32 v65, v34
	v_mov_b32_e32 v50, v34
	v_mov_b32_e32 v51, v34
	v_mov_b32_e32 v52, v34
	v_mov_b32_e32 v53, v34
	v_mov_b32_e32 v54, v34
	v_mov_b32_e32 v55, v34
	v_mov_b32_e32 v56, v34
	v_mov_b32_e32 v57, v34
	v_mov_b32_e32 v42, v34
	v_mov_b32_e32 v43, v34
	v_mov_b32_e32 v44, v34
	v_mov_b32_e32 v45, v34
	v_mov_b32_e32 v46, v34
	v_mov_b32_e32 v47, v34
	v_mov_b32_e32 v48, v34
	v_mov_b32_e32 v49, v34
	v_mov_b32_e32 v26, v34
	v_mov_b32_e32 v27, v34
	v_mov_b32_e32 v28, v34
	v_mov_b32_e32 v29, v34
	v_mov_b32_e32 v30, v34
	v_mov_b32_e32 v31, v34
	v_mov_b32_e32 v32, v34
	v_mov_b32_e32 v33, v34
	v_mov_b32_e32 v18, v34
	v_mov_b32_e32 v19, v34
	v_mov_b32_e32 v20, v34
	v_mov_b32_e32 v21, v34
	v_mov_b32_e32 v22, v34
	v_mov_b32_e32 v23, v34
	v_mov_b32_e32 v24, v34
	v_mov_b32_e32 v25, v34
	v_mov_b32_e32 v10, v34
	v_mov_b32_e32 v11, v34
	v_mov_b32_e32 v12, v34
	v_mov_b32_e32 v13, v34
	v_mov_b32_e32 v14, v34
	v_mov_b32_e32 v15, v34
	v_mov_b32_e32 v16, v34
	v_mov_b32_e32 v17, v34
	v_mov_b32_e32 v1, v34
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v34
	v_mov_b32_e32 v4, v34
	v_mov_b32_e32 v5, v34
	v_mov_b32_e32 v6, v34
	v_mov_b32_e32 v7, v34
	v_mov_b32_e32 v8, v34
	v_mov_b32_e32 v66, v34
	v_mov_b32_e32 v67, v34
	v_mov_b32_e32 v68, v34
	v_mov_b32_e32 v69, v34
	v_mov_b32_e32 v70, v34
	v_mov_b32_e32 v71, v34
	v_mov_b32_e32 v72, v34
	v_mov_b32_e32 v73, v34
	v_mov_b32_e32 v74, v34
	v_mov_b32_e32 v75, v34
	v_mov_b32_e32 v76, v34
	v_mov_b32_e32 v77, v34
	v_mov_b32_e32 v78, v34
	v_mov_b32_e32 v79, v34
	v_mov_b32_e32 v80, v34
	v_mov_b32_e32 v81, v34
	v_mov_b32_e32 v82, v34
	v_mov_b32_e32 v83, v34
	v_mov_b32_e32 v84, v34
	v_mov_b32_e32 v85, v34
	v_mov_b32_e32 v86, v34
	v_mov_b32_e32 v87, v34
	v_mov_b32_e32 v88, v34
	v_mov_b32_e32 v89, v34
	v_mov_b32_e32 v90, v34
	v_mov_b32_e32 v91, v34
	v_mov_b32_e32 v92, v34
	v_mov_b32_e32 v93, v34
	v_mov_b32_e32 v94, v34
	v_mov_b32_e32 v95, v34
	v_mov_b32_e32 v96, v34
	v_mov_b32_e32 v97, v34
	v_mov_b32_e32 v98, v34
	v_mov_b32_e32 v99, v34
	v_mov_b32_e32 v100, v34
	v_mov_b32_e32 v101, v34
	v_mov_b32_e32 v102, v34
	v_mov_b32_e32 v103, v34
	v_mov_b32_e32 v104, v34
	v_mov_b32_e32 v105, v34
	v_mov_b32_e32 v106, v34
	v_mov_b32_e32 v107, v34
	v_mov_b32_e32 v108, v34
	v_mov_b32_e32 v109, v34
	v_mov_b32_e32 v110, v34
	v_mov_b32_e32 v111, v34
	v_mov_b32_e32 v112, v34
	v_mov_b32_e32 v113, v34
	v_mov_b32_e32 v114, v34
	v_mov_b32_e32 v115, v34
	v_mov_b32_e32 v116, v34
	v_mov_b32_e32 v117, v34
	v_mov_b32_e32 v118, v34
	v_mov_b32_e32 v119, v34
	v_mov_b32_e32 v120, v34
	v_mov_b32_e32 v121, v34
	v_mov_b32_e32 v122, v34
	v_mov_b32_e32 v123, v34
	v_mov_b32_e32 v124, v34
	v_mov_b32_e32 v125, v34
	v_mov_b32_e32 v126, v34
	v_mov_b32_e32 v127, v34
	v_mov_b32_e32 v128, v34
	v_mov_b32_e32 v129, v34
	s_mov_b32 s29, 1
	s_lshl_b32 s27, s11, 5
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s22, 0, 0x4800
	s_add_i32 s1, 0, 0x1000
	s_add_i32 s28, s10, 1
	s_add_i32 s10, 0, 0x2000
	s_add_i32 s3, 0, 0x3000
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s26, v136
	s_mov_b32 s30, s24
	s_mov_b32 s24, s22
	s_mov_b32 s22, s0
	s_mov_b32 s0, s1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_cndmask_b32_e32 v0, 0x80000000, v137, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v130, 0x80000000, v139, vcc_lo
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v132, 0x80000000, v138, vcc_lo
	s_mov_b32 s1, s10
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v141, s22, v9
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_b32 v0, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[130:131], v130, s[16:19], 0 offen
	buffer_load_b64 v[132:133], v132, s[16:19], 0 offen
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v142, s1, v9
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v140, s30, v196
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v143, v141 offset:1280
	ds_load_u8 v144, v141 offset:1024
	ds_load_u8 v145, v141 offset:1792
	ds_load_u8 v146, v141 offset:1536
	ds_load_u8 v147, v141 offset:1920
	ds_load_u8 v148, v141 offset:1664
	ds_load_u8 v149, v141 offset:1408
	ds_load_u8 v150, v141 offset:1152
	ds_load_u8 v151, v141 offset:256
	ds_load_u8 v152, v141
	ds_load_u8 v153, v141 offset:768
	ds_load_u8 v154, v141 offset:512
	ds_load_u8 v155, v141 offset:896
	ds_load_u8 v156, v141 offset:640
	ds_load_u8 v157, v141 offset:384
	ds_load_u8 v158, v141 offset:128
	ds_load_u8 v159, v141 offset:3328
	ds_load_u8 v160, v141 offset:3072
	ds_load_u8 v161, v141 offset:3840
	ds_load_u8 v162, v141 offset:3584
	ds_load_u8 v163, v141 offset:3968
	ds_load_u8 v164, v141 offset:3712
	ds_load_u8 v165, v141 offset:3456
	ds_load_u8 v166, v141 offset:3200
	ds_load_u8 v167, v141 offset:2304
	ds_load_u8 v168, v141 offset:2048
	ds_load_u8 v169, v141 offset:2816
	ds_load_u8 v170, v141 offset:2560
	ds_load_u8 v171, v141 offset:2944
	ds_load_u8 v172, v141 offset:2688
	ds_load_u8 v173, v141 offset:2432
	ds_load_u8 v141, v141 offset:2176
	ds_load_u8 v174, v140 offset:640
	ds_load_u8 v175, v140 offset:512
	ds_load_u8 v176, v140 offset:672
	ds_load_u8 v177, v140 offset:544
	ds_load_u8 v178, v140 offset:704
	ds_load_u8 v179, v140 offset:576
	ds_load_u8 v180, v140 offset:736
	ds_load_u8 v181, v140 offset:608
	ds_load_u8 v182, v140 offset:896
	ds_load_u8 v183, v140 offset:768
	ds_load_u8 v184, v140 offset:928
	ds_load_u8 v185, v140 offset:800
	ds_load_u8 v186, v140 offset:960
	ds_load_u8 v187, v140 offset:832
	ds_load_u8 v188, v140 offset:992
	ds_load_u8 v189, v140 offset:864
	ds_load_u8 v190, v140 offset:128
	ds_load_u8 v191, v140
	ds_load_u8 v192, v140 offset:32
	ds_load_u8 v193, v140 offset:160
	ds_load_u8 v194, v140 offset:192
	ds_load_u8 v195, v140 offset:64
	ds_load_u8 v197, v140 offset:224
	ds_load_u8 v198, v140 offset:96
	ds_load_u8 v199, v140 offset:384
	ds_load_u8 v200, v140 offset:256
	ds_load_u8 v201, v140 offset:416
	ds_load_u8 v202, v140 offset:288
	ds_load_u8 v203, v140 offset:448
	ds_load_u8 v204, v140 offset:320
	ds_load_u8 v205, v140 offset:480
	ds_load_u8 v206, v140 offset:352
	ds_load_u8 v207, v140 offset:1664
	ds_load_u8 v208, v140 offset:1536
	ds_load_u8 v209, v140 offset:1696
	ds_load_u8 v210, v140 offset:1568
	ds_load_u8 v211, v140 offset:1728
	ds_load_u8 v212, v140 offset:1600
	ds_load_u8 v213, v140 offset:1760
	ds_load_u8 v214, v140 offset:1632
	ds_load_u8 v215, v140 offset:1920
	ds_load_u8 v216, v140 offset:1792
	ds_load_u8 v217, v140 offset:1952
	ds_load_u8 v218, v140 offset:1824
	ds_load_u8 v219, v140 offset:1984
	ds_load_u8 v220, v140 offset:1856
	ds_load_u8 v221, v140 offset:2016
	ds_load_u8 v222, v140 offset:1888
	ds_load_u8 v223, v140 offset:1152
	ds_load_u8 v224, v140 offset:1024
	ds_load_u8 v225, v140 offset:1184
	ds_load_u8 v226, v140 offset:1056
	ds_load_u8 v227, v140 offset:1216
	ds_load_u8 v228, v140 offset:1088
	ds_load_u8 v229, v140 offset:1248
	ds_load_u8 v230, v140 offset:1120
	ds_load_u8 v231, v140 offset:1408
	ds_load_u8 v232, v140 offset:1280
	ds_load_u8 v233, v140 offset:1440
	ds_load_u8 v234, v140 offset:1312
	ds_load_u8 v235, v140 offset:1472
	ds_load_u8 v236, v140 offset:1344
	ds_load_u8 v237, v140 offset:1504
	ds_load_u8 v140, v140 offset:1376
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v238, v142 offset:1280
	ds_load_u8 v239, v142 offset:1024
	ds_load_u8 v240, v142 offset:1792
	ds_load_u8 v241, v142 offset:1536
	ds_load_u8 v242, v142 offset:256
	ds_load_u8 v243, v142
	ds_load_u8 v244, v142 offset:768
	ds_load_u8 v245, v142 offset:512
	ds_load_u8 v246, v142 offset:3328
	ds_load_u8 v247, v142 offset:3072
	ds_load_u8 v248, v142 offset:3840
	ds_load_u8 v249, v142 offset:3584
	ds_load_u8 v250, v142 offset:2304
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v182, v183, v182, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v175, v142 offset:2048
	ds_load_u8 v183, v142 offset:2816
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v191, v142 offset:2560
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v200, v142 offset:1920
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v143, v144, v143, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v144, v142 offset:1664
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v145, v146, v145, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v146, v142 offset:1408
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v152, v142 offset:1152
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v153, v154, v153, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v154, v142 offset:896
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v208, v142 offset:640
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v216, v142 offset:384
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v224, v142 offset:128
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v232, v142 offset:3968
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v159, v160, v159, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v160, v142 offset:3712
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v161, v162, v161, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v162, v142 offset:3456
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v167, v168, v167, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v168, v142 offset:3200
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v169, v170, v169, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v170, v142 offset:2944
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v149, v150, v149, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v150, v142 offset:2688
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v148, v148, v147, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v147, v142 offset:2432
	ds_load_u8 v142, v142 offset:2176
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v156, v166, v165, 0xc0c0004
	v_perm_b32 v158, v164, v163, 0xc0c0004
	v_perm_b32 v163, v141, v173, 0xc0c0004
	v_perm_b32 v164, v172, v171, 0xc0c0004
	v_perm_b32 v165, v177, v176, 0xc0c0004
	v_perm_b32 v166, v185, v184, 0xc0c0004
	v_perm_b32 v171, v192, v193, 0xc0c0004
	v_perm_b32 v172, v202, v201, 0xc0c0004
	v_perm_b32 v173, v210, v209, 0xc0c0004
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_perm_b32 v179, v187, v186, 0xc0c0004
	v_perm_b32 v185, v195, v194, 0xc0c0004
	v_perm_b32 v186, v204, v203, 0xc0c0004
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_perm_b32 v181, v189, v188, 0xc0c0004
	v_perm_b32 v188, v198, v197, 0xc0c0004
	v_perm_b32 v189, v206, v205, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v202, v239, v238, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v203, v241, v240, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v204, v243, v242, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v205, v245, v244, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v183, v191, v183, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v191, v152, v146, 0xc0c0004
	v_perm_b32 v200, v144, v200, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v210, v224, v216, 0xc0c0004
	v_perm_b32 v208, v208, v154, 0xc0c0004
	s_mov_b32 s10, s3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s3, s29, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v176, v218, v217, 0xc0c0004
	v_perm_b32 v177, v226, v225, 0xc0c0004
	v_perm_b32 v184, v234, v233, 0xc0c0004
	v_perm_b32 v187, v212, v211, 0xc0c0004
	v_perm_b32 v192, v220, v219, 0xc0c0004
	v_perm_b32 v193, v228, v227, 0xc0c0004
	v_perm_b32 v194, v236, v235, 0xc0c0004
	v_perm_b32 v195, v214, v213, 0xc0c0004
	v_perm_b32 v197, v222, v221, 0xc0c0004
	v_perm_b32 v198, v230, v229, 0xc0c0004
	v_perm_b32 v201, v140, v237, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v206, v247, v246, 0xc0c0004
	v_perm_b32 v209, v249, v248, 0xc0c0004
	v_perm_b32 v175, v175, v250, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v211, v168, v162, 0xc0c0004
	v_perm_b32 v212, v160, v232, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v213, v142, v147, 0xc0c0004
	v_perm_b32 v170, v150, v170, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v141, v182, 16, v174
	v_lshl_or_b32 v140, v199, 16, v190
	v_lshl_or_b32 v143, v145, 16, v143
	v_lshl_or_b32 v142, v153, 16, v151
	v_lshl_or_b32 v147, v161, 16, v159
	v_lshl_or_b32 v146, v169, 16, v167
	v_lshl_or_b32 v149, v148, 16, v149
	v_lshl_or_b32 v148, v155, 16, v157
	v_lshl_or_b32 v151, v158, 16, v156
	v_lshl_or_b32 v150, v164, 16, v163
	v_lshl_or_b32 v153, v166, 16, v165
	v_lshl_or_b32 v152, v172, 16, v171
	v_lshl_or_b32 v157, v179, 16, v178
	v_lshl_or_b32 v156, v186, 16, v185
	v_lshl_or_b32 v161, v181, 16, v180
	v_lshl_or_b32 v160, v189, 16, v188
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v165, v203, 16, v202
	v_lshl_or_b32 v164, v205, 16, v204
	v_lshl_or_b32 v169, v200, 16, v191
	v_lshl_or_b32 v168, v208, 16, v210
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s3, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v145, v215, 16, v207
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s29, s3, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v144, v231, 16, v223
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_lshl_b32 s1, s29, 11
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v155, v176, 16, v173
	v_lshl_or_b32 v154, v184, 16, v177
	v_lshl_or_b32 v159, v192, 16, v187
	v_lshl_or_b32 v158, v194, 16, v193
	v_lshl_or_b32 v163, v197, 16, v195
	v_lshl_or_b32 v162, v201, 16, v198
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v167, v209, 16, v206
	v_lshl_or_b32 v166, v183, 16, v175
	v_lshl_or_b32 v171, v212, 16, v211
	v_lshl_or_b32 v170, v170, 16, v213
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[66:73], v[142:143], v[140:141], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[148:149], v[140:141], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[142:143], v[152:153], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[148:149], v[152:153], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[142:143], v[156:157], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[148:149], v[156:157], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[142:143], v[160:161], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[148:149], v[160:161], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[164:165], v[140:141], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[168:169], v[140:141], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[164:165], v[152:153], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[168:169], v[152:153], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[164:165], v[156:157], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[168:169], v[156:157], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[164:165], v[160:161], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[160:161], v[1:8] neg_lo:[1,1,0]
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s3, s1, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v137, s25, v137
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s1, s3, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v138, s27, v138
	v_add_nc_u32_e32 v139, s27, v139
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v251, s3, v134
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[66:73], v[146:147], v[144:145], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[150:151], v[144:145], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[146:147], v[154:155], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[150:151], v[154:155], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[146:147], v[158:159], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[150:151], v[158:159], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[146:147], v[162:163], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[150:151], v[162:163], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[166:167], v[144:145], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[170:171], v[144:145], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[166:167], v[154:155], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[170:171], v[154:155], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[166:167], v[158:159], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[170:171], v[158:159], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[166:167], v[162:163], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[162:163], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s28, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v252, s1, v135
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s26, s26, 16
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s22, s3, 0x4000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s3, s1, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s28, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v251, v0 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v252, v[130:131], v[132:133] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v0, 0x100, v9
	v_mov_b32_e32 v197, v9
	s_mov_b32 s18, s0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v9
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v9
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v9
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v9
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v9
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v9
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v9
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v9
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v9
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v9
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v9
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v9
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v9
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v9
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v9
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v9
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v9
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v9
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v9
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v9
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v9
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v9
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v9
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v9
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v9
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v9
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v9
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v9
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v9
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v9
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s22, 0, 0x4800
	s_add_i32 s1, 0, 0x1000
	s_add_i32 s10, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, v8 :: v_dual_mov_b32 v73, v9
	v_dual_mov_b32 v67, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v75, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v79, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v77, v9 :: v_dual_mov_b32 v24, v8
	v_dual_mov_b32 v81, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v83, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v87, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v85, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v89, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v91, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v95, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v93, v9 :: v_dual_mov_b32 v48, v8
	v_dual_mov_b32 v97, v9 :: v_dual_mov_b32 v44, v8
	v_dual_mov_b32 v99, v9 :: v_dual_mov_b32 v46, v8
	v_dual_mov_b32 v103, v9 :: v_dual_mov_b32 v42, v8
	v_dual_mov_b32 v101, v9 :: v_dual_mov_b32 v56, v8
	v_dual_mov_b32 v105, v9 :: v_dual_mov_b32 v52, v8
	v_dual_mov_b32 v107, v9 :: v_dual_mov_b32 v54, v8
	v_dual_mov_b32 v111, v9 :: v_dual_mov_b32 v50, v8
	v_dual_mov_b32 v109, v9 :: v_dual_mov_b32 v64, v8
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v60, v8
	v_dual_mov_b32 v115, v9 :: v_dual_mov_b32 v62, v8
	v_dual_mov_b32 v119, v9 :: v_dual_mov_b32 v58, v8
	v_dual_mov_b32 v117, v9 :: v_dual_mov_b32 v40, v8
	v_dual_mov_b32 v121, v9 :: v_dual_mov_b32 v36, v8
	v_dual_mov_b32 v123, v9 :: v_dual_mov_b32 v38, v8
	v_dual_mov_b32 v127, v9 :: v_dual_mov_b32 v34, v8
	v_dual_mov_b32 v125, v9 :: v_dual_mov_b32 v66, v8
	v_mov_b32_e32 v129, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v74, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v90, v8
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v96, v8
	v_mov_b32_e32 v98, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v122, v8
	v_mov_b32_e32 v126, v8
	v_mov_b32_e32 v124, v8
	v_mov_b32_e32 v128, v8
	s_add_i32 s3, 0, 0x3000
.LBB0_8:                                ; %._crit_edge
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v0, 0, 1, s23
	v_dual_mov_b32 v193, v129 :: v_dual_add_nc_u32 v130, s24, v196
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	ds_load_u8_d16 v230, v130
	ds_load_u8_d16 v249, v130 offset:32
	ds_load_u8_d16 v231, v130 offset:128
	ds_load_u8_d16 v250, v130 offset:160
	ds_load_u8_d16 v241, v130 offset:64
	ds_load_u8_d16 v242, v130 offset:192
	ds_load_u8_d16 v228, v130 offset:224
	ds_load_u8_d16 v233, v130 offset:96
	ds_load_u8_d16 v232, v130 offset:256
	ds_load_u8_d16 v255, v130 offset:384
	ds_load_u8_d16 v251, v130 offset:288
	ds_load_u8_d16 v252, v130 offset:416
	ds_load_u8_d16 v243, v130 offset:320
	ds_load_u8_d16 v244, v130 offset:448
	ds_load_u8_d16 v234, v130 offset:480
	ds_load_u8_d16 v235, v130 offset:352
	ds_load_u8_d16 v0, v130 offset:512
	ds_load_u8_d16 v194, v130 offset:640
	ds_load_u8_d16 v253, v130 offset:544
	ds_load_u8_d16 v254, v130 offset:672
	ds_load_u8_d16 v245, v130 offset:576
	ds_load_u8_d16 v246, v130 offset:704
	ds_load_u8_d16 v236, v130 offset:736
	ds_load_u8_d16 v237, v130 offset:608
	ds_load_u8_d16 v209, v130 offset:768
	ds_load_u8_d16 v206, v130 offset:896
	ds_load_u8_d16 v204, v130 offset:800
	ds_load_u8_d16 v229, v130 offset:928
	ds_load_u8_d16 v247, v130 offset:832
	ds_load_u8_d16 v248, v130 offset:960
	ds_load_u8_d16 v239, v130 offset:992
	ds_load_u8_d16 v240, v130 offset:864
	ds_load_u8_d16 v198, v130 offset:1024
	ds_load_u8_d16 v199, v130 offset:1152
	ds_load_u8_d16 v205, v130 offset:1056
	ds_load_u8_d16 v207, v130 offset:1184
	ds_load_u8_d16 v202, v130 offset:1088
	ds_load_u8_d16 v203, v130 offset:1216
	ds_load_u8_d16 v9, v130 offset:1248
	v_dual_mov_b32 v192, v128 :: v_dual_mov_b32 v189, v125
	v_dual_mov_b32 v188, v124 :: v_dual_mov_b32 v191, v127
	ds_load_u8_d16 v225, v130 offset:1536
	ds_load_u8_d16 v226, v130 offset:1664
	ds_load_u8_d16 v219, v130 offset:1568
	ds_load_u8_d16 v220, v130 offset:1696
	ds_load_u8_d16 v213, v130 offset:1600
	ds_load_u8_d16 v216, v130 offset:1728
	ds_load_u8_d16 v214, v130 offset:1760
	ds_load_u8_d16 v215, v130 offset:1632
	ds_load_u8_d16 v227, v130 offset:1792
	ds_load_u8_d16 v238, v130 offset:1920
	ds_load_u8_d16 v223, v130 offset:1824
	ds_load_u8_d16 v224, v130 offset:1952
	ds_load_u8_d16 v221, v130 offset:1856
	ds_load_u8_d16 v222, v130 offset:1984
	ds_load_u8_d16 v217, v130 offset:2016
	ds_load_u8_d16 v218, v130 offset:1888
	v_dual_mov_b32 v190, v126 :: v_dual_mov_b32 v187, v123
	v_dual_mov_b32 v186, v122 :: v_dual_mov_b32 v185, v121
	v_dual_mov_b32 v184, v120 :: v_dual_mov_b32 v181, v117
	v_dual_mov_b32 v180, v116 :: v_dual_mov_b32 v183, v119
	v_dual_mov_b32 v182, v118 :: v_dual_mov_b32 v179, v115
	v_dual_mov_b32 v178, v114 :: v_dual_mov_b32 v177, v113
	v_dual_mov_b32 v176, v112 :: v_dual_mov_b32 v173, v109
	s_waitcnt lgkmcnt(16)
	scratch_store_b32 off, v9, off offset:140 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v130 offset:1120
	v_dual_mov_b32 v172, v108 :: v_dual_mov_b32 v175, v111
	v_dual_mov_b32 v174, v110 :: v_dual_mov_b32 v171, v107
	v_dual_mov_b32 v170, v106 :: v_dual_mov_b32 v169, v105
	v_dual_mov_b32 v168, v104 :: v_dual_mov_b32 v165, v101
	v_dual_mov_b32 v164, v100 :: v_dual_mov_b32 v167, v103
	v_dual_mov_b32 v166, v102 :: v_dual_mov_b32 v163, v99
	v_dual_mov_b32 v162, v98 :: v_dual_mov_b32 v161, v97
	v_dual_mov_b32 v160, v96 :: v_dual_mov_b32 v157, v93
	v_dual_mov_b32 v156, v92 :: v_dual_mov_b32 v159, v95
	v_dual_mov_b32 v158, v94 :: v_dual_mov_b32 v155, v91
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:144 ; 4-byte Folded Spill
	ds_load_u8_d16 v200, v130 offset:1280
	ds_load_u8_d16 v201, v130 offset:1408
	ds_load_u8_d16 v211, v130 offset:1312
	ds_load_u8_d16 v212, v130 offset:1440
	ds_load_u8_d16 v208, v130 offset:1344
	ds_load_u8_d16 v210, v130 offset:1472
	ds_load_u8_d16 v9, v130 offset:1504
	v_dual_mov_b32 v154, v90 :: v_dual_mov_b32 v153, v89
	v_dual_mov_b32 v152, v88 :: v_dual_mov_b32 v149, v85
	v_dual_mov_b32 v148, v84 :: v_dual_mov_b32 v151, v87
	v_dual_mov_b32 v150, v86 :: v_dual_mov_b32 v147, v83
	v_dual_mov_b32 v146, v82 :: v_dual_mov_b32 v145, v81
	v_dual_mov_b32 v144, v80 :: v_dual_mov_b32 v141, v77
	v_dual_mov_b32 v140, v76 :: v_dual_mov_b32 v143, v79
	v_dual_mov_b32 v142, v78 :: v_dual_mov_b32 v139, v75
	v_dual_mov_b32 v138, v74 :: v_dual_mov_b32 v137, v73
	v_dual_mov_b32 v136, v72 :: v_dual_mov_b32 v133, v69
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:148 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v130 offset:1376
	v_dual_mov_b32 v132, v68 :: v_dual_mov_b32 v135, v71
	v_dual_mov_b32 v134, v70 :: v_dual_mov_b32 v131, v67
	v_mov_b32_e32 v130, v66
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s23
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v9, off offset:152 ; 4-byte Folded Spill
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v130, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v146, v0, v194, 0xc0c0004
	v_perm_b32 v147, v209, v206, 0xc0c0004
	v_perm_b32 v148, v232, v255, 0xc0c0004
	v_perm_b32 v149, v227, v238, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v137, s18, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v201, off offset:156
	scratch_store_b32 off, v199, off offset:164
	scratch_store_b32 off, v238, off offset:168
	scratch_store_b32 off, v200, off offset:160
	scratch_store_b32 off, v255, off offset:176
	scratch_store_b32 off, v250, off offset:172
	v_lshl_or_b32 v147, v147, 16, v146
	v_perm_b32 v146, v230, v231, 0xc0c0004
	v_mov_b16_e64 v238.l, v198.l
	v_perm_b32 v166, v200, v201, 0xc0c0004
	v_perm_b32 v170, v213, v216, 0xc0c0004
	v_perm_b32 v171, v221, v222, 0xc0c0004
	v_lshl_or_b32 v146, v148, 16, v146
	v_perm_b32 v148, v225, v226, 0xc0c0004
	v_mov_b16_e64 v191.l, v210.l
	v_mov_b16_e64 v210.l, v206.l
	v_lshl_or_b32 v181, v171, 16, v170
	v_perm_b32 v170, v202, v203, 0xc0c0004
	v_lshl_or_b32 v149, v149, 16, v148
	v_perm_b32 v148, v198, v199, 0xc0c0004
	v_perm_b32 v171, v208, v191, 0xc0c0004
	v_mov_b16_e64 v206.l, v194.l
	v_mov_b32_e32 v194, v196
	v_mov_b16_e64 v196.l, v0.l
	v_lshl_or_b32 v148, v166, 16, v148
	v_lshl_or_b32 v180, v171, 16, v170
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_dual_mov_b32 v175, v111 :: v_dual_mov_b32 v174, v110
	v_dual_mov_b32 v173, v109 :: v_dual_mov_b32 v172, v108
	v_dual_mov_b32 v171, v107 :: v_dual_mov_b32 v170, v106
	v_mov_b16_e64 v0.l, v253.l
	v_mov_b16_e64 v9.l, v252.l
	v_mov_b16_e64 v255.l, v251.l
	v_mov_b16_e64 v195.l, v204.l
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v131, off, off offset:72
	scratch_load_b32 v132, off, off offset:64
	scratch_load_b32 v133, off, off offset:56
	scratch_load_b32 v134, off, off offset:48
	scratch_load_b32 v135, off, off offset:40
	scratch_load_b32 v136, off, off offset:32
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v150, s18, v130
	scratch_load_b32 v130, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v131, s18, v131
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v132, s18, v132
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v133, s18, v133
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v132, v132
	ds_load_u8 v133, v133
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v134, s18, v134
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v135, s18, v135
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v136, s18, v136
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s18, v130
	scratch_load_b32 v130, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s18, v130
	scratch_load_b32 v130, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v153, s18, v130
	scratch_load_b32 v130, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s18, v130
	scratch_load_b32 v130, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s18, v130
	scratch_load_b32 v130, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v156, s18, v130
	scratch_load_b32 v130, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s18, v130
	scratch_load_b32 v130, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s18, v130
	scratch_load_b32 v130, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s18, v130
	scratch_load_b32 v130, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, s18, v130
	scratch_load_b32 v130, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s18, v130
	scratch_load_b32 v130, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v138, 16, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v142, s18, v130
	scratch_load_b32 v130, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v143, s18, v130
	scratch_load_b32 v130, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s18, v130
	scratch_load_b32 v130, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s18, v130
	scratch_load_b32 v130, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v144
	ds_load_u8 v139, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v142
	ds_load_u8 v140, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v198, v139, 16, v138
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_wmma_i32_16x16x16_iu4 v[138:145], v[198:199], v[146:147], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v158, s18, v130
	scratch_load_b32 v130, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v159, s18, v130
	scratch_load_b32 v130, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v160, s18, v130
	scratch_load_b32 v130, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v161, s18, v130
	scratch_load_b32 v130, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v158, 16, v160
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, s18, v130
	scratch_load_b32 v130, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s18, v130
	scratch_load_b32 v130, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v164, s18, v130
	scratch_load_b32 v130, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s18, v130
	scratch_load_b32 v130, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v158, v164
	ds_load_u8 v159, v165
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v162
	ds_load_u8 v160, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v159, 16, v158
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, s18, v130
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v130, v130
	ds_load_u8 v131, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v130, 16, v132
	ds_load_u8 v130, v136
	ds_load_u8 v131, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v134
	ds_load_u8 v132, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v131, 16, v130
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	v_wmma_i32_16x16x16_iu4 v[130:137], v[186:187], v[146:147], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v146, v152
	ds_load_u8 v147, v153
	v_wmma_i32_16x16x16_iu4 v[130:137], v[188:189], v[148:149], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v150
	ds_load_u8 v150, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v150, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v147, 16, v146
	ds_load_u8 v146, v156
	ds_load_u8 v147, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v154
	ds_load_u8 v150, v155
	v_perm_b32 v154, v219, v220, 0xc0c0004
	v_perm_b32 v155, v223, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v155, 16, v154
	v_perm_b32 v154, v205, v207, 0xc0c0004
	v_perm_b32 v155, v211, v212, 0xc0c0004
	v_lshl_or_b32 v164, v155, 16, v154
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_mov_b32_e32 v157, v93
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v150, v147, 0xc0c0004
	v_dual_mov_b32 v156, v92 :: v_dual_mov_b32 v155, v91
	v_mov_b32_e32 v154, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v200, v147, 16, v146
	v_perm_b32 v146, v253, v254, 0xc0c0004
	v_perm_b32 v147, v204, v229, 0xc0c0004
	v_mov_b16_e64 v253.l, v249.l
	v_wmma_i32_16x16x16_iu4 v[138:145], v[200:201], v[148:149], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v163, v147, 16, v146
	v_perm_b32 v146, v249, v250, 0xc0c0004
	v_perm_b32 v147, v251, v252, 0xc0c0004
	v_mov_b16_e64 v249.l, v245.l
	v_mov_b16_e64 v252.l, v248.l
	v_mov_b16_e64 v251.l, v247.l
	v_mov_b16_e64 v250.l, v246.l
	v_lshl_or_b32 v162, v147, 16, v146
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_wmma_i32_16x16x16_iu4 v[154:161], v[198:199], v[162:163], v[154:161] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[186:187], v[162:163], v[146:153] neg_lo:[1,1,0]
	v_perm_b32 v162, v245, v246, 0xc0c0004
	v_perm_b32 v163, v247, v248, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[154:161], v[200:201], v[164:165], v[154:161] neg_lo:[1,1,0]
	v_mov_b16_e64 v245.l, v241.l
	v_wmma_i32_16x16x16_iu4 v[146:153], v[188:189], v[164:165], v[146:153] neg_lo:[1,1,0]
	v_mov_b16_e64 v248.l, v244.l
	v_lshl_or_b32 v179, v163, 16, v162
	v_perm_b32 v162, v241, v242, 0xc0c0004
	v_perm_b32 v163, v243, v244, 0xc0c0004
	v_mov_b16_e64 v241.l, v236.l
	v_mov_b16_e64 v244.l, v240.l
	v_mov_b16_e64 v247.l, v243.l
	v_mov_b16_e64 v243.l, v239.l
	v_lshl_or_b32 v178, v163, 16, v162
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v165, v101 :: v_dual_mov_b32 v164, v100
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v162, v98
	v_wmma_i32_16x16x16_iu4 v[170:177], v[198:199], v[178:179], v[170:177] neg_lo:[1,1,0]
	v_mov_b16_e64 v246.l, v242.l
	v_mov_b16_e64 v242.l, v237.l
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[186:187], v[178:179], v[162:169] neg_lo:[1,1,0]
	v_perm_b32 v178, v237, v236, 0xc0c0004
	v_perm_b32 v179, v240, v239, 0xc0c0004
	v_mov_b16_e64 v236.l, v227.l
	v_mov_b16_e64 v227.l, v223.l
	v_mov_b16_e64 v223.l, v219.l
	v_mov_b16_e64 v219.l, v213.l
	v_mov_b16_e64 v213.l, v208.l
	v_mov_b16_e64 v208.l, v203.l
	v_lshl_or_b32 v203, v179, 16, v178
	v_perm_b32 v178, v233, v228, 0xc0c0004
	v_perm_b32 v179, v235, v234, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[162:169], v[188:189], v[180:181], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[200:201], v[180:181], v[170:177] neg_lo:[1,1,0]
	v_mov_b16_e64 v240.l, v235.l
	v_mov_b16_e64 v235.l, v228.l
	v_mov_b16_e64 v228.l, v224.l
	v_mov_b16_e64 v224.l, v220.l
	v_mov_b16_e64 v220.l, v216.l
	v_mov_b16_e64 v216.l, v212.l
	v_mov_b16_e64 v212.l, v207.l
	v_mov_b16_e64 v207.l, v202.l
	v_lshl_or_b32 v202, v179, 16, v178
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_dual_mov_b32 v183, v119 :: v_dual_mov_b32 v182, v118
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	v_dual_mov_b32 v179, v115 :: v_dual_mov_b32 v178, v114
	v_mov_b16_e64 v239.l, v234.l
	v_mov_b16_e64 v234.l, v226.l
	v_mov_b16_e64 v226.l, v222.l
	v_mov_b16_e64 v222.l, v218.l
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[202:203], v[178:185] neg_lo:[1,1,0]
	v_perm_b32 v186, v215, v214, 0xc0c0004
	v_perm_b32 v187, v218, v217, 0xc0c0004
	v_mov_b16_e64 v218.l, v215.l
	v_mov_b16_e64 v215.l, v211.l
	v_mov_b16_e64 v211.l, v205.l
	v_mov_b16_e64 v237.l, v233.l
	v_lshl_or_b32 v205, v187, 16, v186
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:140
	scratch_load_b32 v187, off, off offset:144
	v_mov_b16_e64 v233.l, v225.l
	v_mov_b16_e64 v225.l, v221.l
	v_mov_b16_e64 v221.l, v217.l
	v_mov_b16_e64 v217.l, v214.l
	v_mov_b16_e64 v214.l, v191.l
	s_waitcnt vmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:148
	scratch_load_b32 v190, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v187, v190, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v204, v187, 16, v186
	v_wmma_i32_16x16x16_iu4 v[178:185], v[188:189], v[204:205], v[178:185] neg_lo:[1,1,0]
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[198:199], v[202:203], v[186:193] neg_lo:[1,1,0]
	scratch_load_b32 v199, off, off offset:164 ; 4-byte Folded Reload
	v_mov_b16_e64 v198.l, v238.l
	scratch_load_b32 v238, off, off offset:168 ; 4-byte Folded Reload
	v_mov_b16_e64 v203.l, v208.l
	v_mov_b16_e64 v208.l, v213.l
	v_mov_b16_e64 v213.l, v219.l
	v_mov_b16_e64 v219.l, v223.l
	v_mov_b16_e64 v223.l, v227.l
	v_mov_b16_e64 v227.l, v236.l
	v_mov_b16_e64 v236.l, v241.l
	v_mov_b16_e64 v241.l, v245.l
	v_mov_b16_e64 v245.l, v249.l
	v_mov_b16_e64 v249.l, v253.l
	v_mov_b16_e64 v253.l, v0.l
	v_mov_b16_e64 v0.l, v196.l
	v_mov_b32_e32 v196, v194
	v_mov_b16_e64 v194.l, v206.l
	v_mov_b16_e64 v206.l, v210.l
	v_wmma_i32_16x16x16_iu4 v[186:193], v[200:201], v[204:205], v[186:193] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v201, off, off offset:156
	scratch_load_b32 v200, off, off offset:160
	v_mov_b16_e64 v205.l, v211.l
	v_mov_b16_e64 v211.l, v215.l
	v_mov_b16_e64 v215.l, v218.l
	v_mov_b16_e64 v218.l, v222.l
	v_mov_b16_e64 v222.l, v226.l
	v_mov_b16_e64 v226.l, v234.l
	v_mov_b16_e64 v234.l, v239.l
	v_mov_b16_e64 v239.l, v243.l
	v_mov_b16_e64 v243.l, v247.l
	v_mov_b16_e64 v247.l, v251.l
	v_mov_b16_e64 v251.l, v255.l
	scratch_load_b32 v255, off, off offset:176 ; 4-byte Folded Reload
	v_mov_b16_e64 v210.l, v214.l
	v_mov_b16_e64 v214.l, v217.l
	v_mov_b16_e64 v217.l, v221.l
	v_mov_b16_e64 v221.l, v225.l
	v_mov_b16_e64 v225.l, v233.l
	v_mov_b16_e64 v233.l, v237.l
	v_mov_b16_e64 v237.l, v242.l
	v_mov_b16_e64 v242.l, v246.l
	v_mov_b16_e64 v246.l, v250.l
	scratch_load_b32 v250, off, off offset:172 ; 4-byte Folded Reload
	v_mov_b16_e64 v202.l, v207.l
	v_mov_b16_e64 v207.l, v212.l
	v_mov_b16_e64 v212.l, v216.l
	v_mov_b16_e64 v216.l, v220.l
	v_mov_b16_e64 v220.l, v224.l
	v_mov_b16_e64 v224.l, v228.l
	v_mov_b16_e64 v228.l, v235.l
	v_mov_b16_e64 v235.l, v240.l
	v_mov_b16_e64 v240.l, v244.l
	v_mov_b16_e64 v244.l, v248.l
	v_mov_b16_e64 v248.l, v252.l
	v_mov_b16_e64 v252.l, v9.l
	v_mov_b16_e64 v204.l, v195.l
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_perm_b32 v9, v0, v194, 0xc0c0004
	v_perm_b32 v0, v209, v206, 0xc0c0004
	v_perm_b32 v66, v230, v231, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v68, v232, v255, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v70, off, off offset:40
	scratch_load_b32 v72, off, off offset:52
	scratch_load_b32 v71, off, off offset:36
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v0, 16, v9
	v_lshl_or_b32 v66, v68, 16, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:64
	scratch_load_b32 v68, off, off offset:72
	scratch_load_b32 v9, off, off offset:56
	v_dual_mov_b32 v128, v192 :: v_dual_mov_b32 v129, v193
	v_dual_mov_b32 v124, v188 :: v_dual_add_nc_u32 v69, s10, v197
	v_mov_b32_e32 v126, v190
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v74, v243, v244, 0xc0c0004
	v_perm_b32 v76, v235, v234, 0xc0c0004
	v_mov_b32_e32 v125, v189
	ds_load_u8 v69, v69
	v_dual_mov_b32 v96, v160 :: v_dual_mov_b32 v97, v161
	v_dual_mov_b32 v92, v156 :: v_dual_mov_b32 v93, v157
	v_dual_mov_b32 v94, v158 :: v_dual_mov_b32 v95, v159
	v_dual_mov_b32 v90, v154 :: v_dual_mov_b32 v91, v155
	v_dual_mov_b32 v88, v152 :: v_dual_mov_b32 v89, v153
	v_dual_mov_b32 v84, v148 :: v_dual_mov_b32 v85, v149
	v_dual_mov_b32 v86, v150 :: v_dual_mov_b32 v87, v151
	v_dual_mov_b32 v82, v146 :: v_dual_mov_b32 v83, v147
	v_dual_mov_b32 v80, v144 :: v_dual_mov_b32 v81, v145
	v_dual_mov_b32 v78, v142 :: v_dual_mov_b32 v79, v143
	v_dual_mov_b32 v127, v191 :: v_dual_mov_b32 v118, v182
	v_dual_mov_b32 v122, v186 :: v_dual_mov_b32 v123, v187
	v_dual_mov_b32 v120, v184 :: v_dual_mov_b32 v121, v185
	v_dual_mov_b32 v116, v180 :: v_dual_mov_b32 v117, v181
	v_dual_mov_b32 v119, v183 :: v_dual_mov_b32 v114, v178
	v_dual_mov_b32 v115, v179 :: v_dual_mov_b32 v112, v176
	v_dual_mov_b32 v113, v177 :: v_dual_mov_b32 v108, v172
	v_dual_mov_b32 v109, v173 :: v_dual_mov_b32 v110, v174
	v_dual_mov_b32 v102, v166 :: v_dual_mov_b32 v111, v175
	v_dual_mov_b32 v106, v170 :: v_dual_mov_b32 v107, v171
	v_dual_mov_b32 v104, v168 :: v_dual_mov_b32 v105, v169
	v_dual_mov_b32 v100, v164 :: v_dual_mov_b32 v101, v165
	v_dual_mov_b32 v103, v167 :: v_dual_mov_b32 v98, v162
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v99, v163 :: v_dual_add_nc_u32 v70, s10, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v72, s10, v72
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v71, s10, v71
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s10, v68
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v70, v70
	ds_load_u8 v0, v0
	ds_load_u8 v68, v68
	ds_load_u8 v9, v9
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s10, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s10, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	v_lshl_or_b32 v69, v9, 16, v0
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:84
	scratch_load_b32 v9, off, off offset:68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[66:67], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s10, v70
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v0, v0
	ds_load_u8 v70, v70
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s10, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s10, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	v_lshl_or_b32 v71, v9, 16, v0
	v_perm_b32 v0, v253, v254, 0xc0c0004
	v_perm_b32 v9, v204, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v70, v72, 16, v70
	v_perm_b32 v72, v251, v252, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[58:65], v[70:71], v[66:67], v[58:65] neg_lo:[1,1,0]
	v_perm_b32 v66, v249, v250, 0xc0c0004
	v_lshl_or_b32 v67, v9, 16, v0
	v_perm_b32 v0, v245, v246, 0xc0c0004
	v_perm_b32 v9, v247, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v66, v72, 16, v66
	v_perm_b32 v72, v241, v242, 0xc0c0004
	v_lshl_or_b32 v73, v9, 16, v0
	v_perm_b32 v0, v237, v236, 0xc0c0004
	v_perm_b32 v9, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v74, v233, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[50:57], v[68:69], v[66:67], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[70:71], v[66:67], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[26:33], v[68:69], v[72:73], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v76, 16, v74
	v_perm_b32 v0, v225, v226, 0xc0c0004
	v_perm_b32 v9, v227, v238, 0xc0c0004
	v_perm_b32 v66, v198, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[70:71], v[72:73], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[68:69], v[74:75], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v68, v200, v201, 0xc0c0004
	v_lshl_or_b32 v67, v9, 16, v0
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[74:75], v[1:8] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v70, off, off offset:8
	scratch_load_b32 v71, off, off offset:96
	scratch_load_b32 v69, off, off
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v68, off, off offset:24
	scratch_load_b32 v9, off, off offset:16
	scratch_load_b32 v72, off, off offset:100
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v74, v211, v212, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v70, s10, v70
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v71, s10, v71
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v69, s10, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v0, v0
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s10, v68
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s10, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v9, v9
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s10, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s10, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	v_lshl_or_b32 v69, v9, 16, v0
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:116
	scratch_load_b32 v9, off, off offset:108
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[66:67], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s10, v70
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v0, v0
	ds_load_u8 v70, v70
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s10, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s10, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	v_lshl_or_b32 v71, v9, 16, v0
	v_perm_b32 v0, v219, v220, 0xc0c0004
	v_perm_b32 v9, v223, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v70, v72, 16, v70
	v_perm_b32 v72, v205, v207, 0xc0c0004
	v_lshl_or_b32 v73, v9, 16, v0
	v_perm_b32 v0, v213, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[70:71], v[66:67], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v74, 16, v72
	v_perm_b32 v66, v202, v203, 0xc0c0004
	v_perm_b32 v74, v208, v210, 0xc0c0004
	v_perm_b32 v9, v221, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[68:69], v[72:73], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[70:71], v[72:73], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v74, 16, v66
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:140
	scratch_load_b32 v75, off, off offset:144
	v_lshl_or_b32 v67, v9, 16, v0
	v_perm_b32 v0, v215, v214, 0xc0c0004
	v_perm_b32 v9, v218, v217, 0xc0c0004
	v_dual_mov_b32 v72, v136 :: v_dual_mov_b32 v73, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[68:69], v[66:67], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[70:71], v[66:67], v[18:25] neg_lo:[1,1,0]
	v_dual_mov_b32 v66, v130 :: v_dual_mov_b32 v67, v131
	s_waitcnt vmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v75, off, off offset:148
	scratch_load_b32 v76, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	v_lshl_or_b32 v75, v9, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v74, v76, 16, v74
	v_dual_mov_b32 v76, v140 :: v_dual_mov_b32 v77, v141
	v_wmma_i32_16x16x16_iu4 v[10:17], v[68:69], v[74:75], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[74:75], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v74, v138 :: v_dual_mov_b32 v75, v139
	v_dual_mov_b32 v68, v132 :: v_dual_mov_b32 v69, v133
	v_dual_mov_b32 v70, v134 :: v_dual_mov_b32 v71, v135
.LBB0_12:                               ; %._crit_edge278
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v0, 0, 1, s21
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v199, v127 :: v_dual_add_nc_u32 v194, s22, v196
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v198, v126 :: v_dual_mov_b32 v201, v123
	v_cmp_ne_u32_e64 s0, 1, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	ds_load_u8_d16 v0, v194
	v_dual_mov_b32 v200, v122 :: v_dual_mov_b32 v203, v121
	v_dual_mov_b32 v202, v120 :: v_dual_mov_b32 v205, v117
	v_dual_mov_b32 v204, v116 :: v_dual_mov_b32 v207, v119
	v_dual_mov_b32 v206, v118 :: v_dual_mov_b32 v209, v115
	v_dual_mov_b32 v208, v114 :: v_dual_mov_b32 v211, v113
	v_dual_mov_b32 v210, v112 :: v_dual_mov_b32 v213, v109
	v_dual_mov_b32 v212, v108 :: v_dual_mov_b32 v215, v111
	v_dual_mov_b32 v214, v110 :: v_dual_mov_b32 v217, v107
	v_dual_mov_b32 v216, v106 :: v_dual_mov_b32 v219, v105
	v_dual_mov_b32 v218, v104 :: v_dual_mov_b32 v221, v101
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:32
	v_dual_mov_b32 v220, v100 :: v_dual_mov_b32 v223, v103
	v_dual_mov_b32 v222, v102 :: v_dual_mov_b32 v225, v99
	v_dual_mov_b32 v224, v98 :: v_dual_mov_b32 v227, v97
	v_dual_mov_b32 v226, v96 :: v_dual_mov_b32 v229, v93
	v_dual_mov_b32 v228, v92 :: v_dual_mov_b32 v231, v95
	v_dual_mov_b32 v230, v94 :: v_dual_mov_b32 v233, v91
	v_dual_mov_b32 v232, v90 :: v_dual_mov_b32 v235, v89
	v_dual_mov_b32 v234, v88 :: v_dual_mov_b32 v237, v85
	v_dual_mov_b32 v236, v84 :: v_dual_mov_b32 v239, v87
	v_dual_mov_b32 v238, v86 :: v_dual_mov_b32 v241, v83
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:128
	v_dual_mov_b32 v240, v82 :: v_dual_mov_b32 v243, v81
	v_dual_mov_b32 v242, v80 :: v_dual_mov_b32 v245, v77
	v_dual_mov_b32 v244, v76 :: v_dual_mov_b32 v247, v79
	v_dual_mov_b32 v246, v78 :: v_dual_mov_b32 v249, v75
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v248, v74 :: v_dual_mov_b32 v251, v73
	v_dual_mov_b32 v250, v72 :: v_dual_mov_b32 v253, v69
	v_dual_mov_b32 v252, v68 :: v_dual_mov_b32 v255, v71
	v_mov_b32_e32 v254, v70
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:64
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:256
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:384
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:448
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:576
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v194 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v194 offset:768
	ds_load_u8_d16 v0, v194 offset:896
	ds_load_u8_d16 v195, v194 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:324 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:328 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:244 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:248 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:188 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:192 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:348 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1152
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:352 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:284 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:288 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1088
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:180 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:184 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:156 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:160 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:356 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:360 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:292 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:296 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:196 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:200 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:164 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:168 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:364 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:368 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:332 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:336 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:252 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:256 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:204 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:208 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:372 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:376 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:340 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:344 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:260 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v195, off offset:264 ; 4-byte Folded Spill
	ds_load_u8_d16 v195, v194 offset:2016
	ds_load_u8_d16 v194, v194 offset:1888
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v195, off offset:212 ; 4-byte Folded Spill
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v194, off offset:216 ; 4-byte Folded Spill
	v_dual_mov_b32 v195, v129 :: v_dual_mov_b32 v194, v128
	scratch_store_b64 off, v[194:195], off offset:300 ; 8-byte Folded Spill
	v_dual_mov_b32 v195, v125 :: v_dual_mov_b32 v194, v124
	scratch_store_b64 off, v[194:195], off offset:316 ; 8-byte Folded Spill
	v_dual_mov_b32 v195, v67 :: v_dual_mov_b32 v194, v66
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v194, off, off offset:76
	scratch_load_b32 v198, off, off offset:84
	scratch_load_b32 v195, off, off offset:68
	scratch_load_b32 v200, off, off offset:52
	scratch_load_b32 v201, off, off offset:92
	scratch_load_b32 v199, off, off offset:36
	scratch_load_b32 v202, off, off offset:100
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v194, s1, v194
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v198, s1, v198
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v195, s1, v195
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v200, s1, v200
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v201, s1, v201
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v194, v194
	ds_load_u8 v198, v198
	ds_load_u8 v195, v195
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v199, s1, v199
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v200, v200
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v202, s1, v202
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v201, v201
	ds_load_u8 v199, v199
	ds_load_u8 v202, v202
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v195, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s1, v195
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v195, v195
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v198, v195, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v198, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v195, v195, 16, v194
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s1, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v198, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v199, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s1, v199
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v199, v199
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v200, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v194, v199, 16, v198
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v198, off, off offset:112
	scratch_load_b32 v199, off, off offset:108
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v200, s1, v200
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v198, s1, v198
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s1, v199
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v200, v200
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v199, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s1, v199
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v199, v199
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v200, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v243, v199, 16, v198
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v198, off, off offset:172
	scratch_load_b32 v199, off, off offset:176
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v200, s1, v200
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v200, v200
	s_waitcnt vmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v201, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v201, s1, v201
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v201, v201
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v201, 16, v200
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:188
	scratch_load_b32 v200, off, off offset:192
	s_waitcnt vmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v199, 16, v198
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v198, off, off offset:140
	scratch_load_b32 v199, off, off offset:144
	s_waitcnt vmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:148
	scratch_load_b32 v200, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v202, v199, 16, v198
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v198, off, off offset:204
	scratch_load_b32 v199, off, off offset:208
	v_wmma_i32_16x16x16_iu4 v[186:193], v[194:195], v[202:203], v[186:193] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:212
	scratch_load_b32 v200, off, off offset:216
	s_waitcnt vmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v205, v199, 16, v198
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v198, off, off offset:156
	scratch_load_b32 v199, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:164
	scratch_load_b32 v200, off, off offset:168
	s_waitcnt vmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v204, v199, 16, v198
	v_wmma_i32_16x16x16_iu4 v[186:193], v[242:243], v[204:205], v[186:193] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[192:193], off offset:300
	scratch_store_b64 off, v[188:189], off offset:316
	v_dual_mov_b32 v201, v187 :: v_dual_mov_b32 v200, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v186, off, off offset:64
	scratch_load_b32 v188, off, off offset:72
	scratch_load_b32 v187, off, off offset:56
	v_add_nc_u32_e32 v189, s1, v197
	v_dual_mov_b32 v199, v191 :: v_dual_mov_b32 v198, v190
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v190, off, off offset:40
	scratch_load_b32 v192, off, off offset:8
	scratch_load_b32 v191, off, off
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v186, s1, v186
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v188, s1, v188
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v187, s1, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	ds_load_u8 v188, v188
	ds_load_u8 v187, v187
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v190, s1, v190
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v191, s1, v191
	v_add_nc_u32_e32 v192, s1, v192
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v190, v190
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s1, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v188, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v187, v187, 16, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s1, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s1, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v190, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v186, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:20
	scratch_load_b32 v189, off, off offset:16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[202:203], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v190, s1, v190
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v188, s1, v188
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s1, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v190, v190
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s1, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v190, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v189, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v190, s1, v190
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v190, v190
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v191, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v191, s1, v191
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v191, v191
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v191, 16, v190
	v_wmma_i32_16x16x16_iu4 v[178:185], v[188:189], v[204:205], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v209, v179 :: v_dual_mov_b32 v208, v178
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:236
	scratch_load_b32 v179, off, off offset:240
	v_dual_mov_b32 v205, v181 :: v_dual_mov_b32 v204, v180
	v_dual_mov_b32 v207, v183 :: v_dual_mov_b32 v206, v182
	v_dual_mov_b32 v203, v185 :: v_dual_mov_b32 v202, v184
	s_waitcnt vmcnt(0)
	v_perm_b32 v178, v178, v179, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:244
	scratch_load_b32 v180, off, off offset:248
	s_waitcnt vmcnt(0)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v179, 16, v178
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:220
	scratch_load_b32 v180, off, off offset:224
	s_waitcnt vmcnt(0)
	v_perm_b32 v178, v178, v180, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:228
	scratch_load_b32 v181, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v180, 16, v178
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:252
	scratch_load_b32 v181, off, off offset:256
	v_wmma_i32_16x16x16_iu4 v[162:169], v[186:187], v[178:179], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[194:195], v[178:179], v[170:177] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v181, off, off offset:260
	scratch_load_b32 v182, off, off offset:264
	s_waitcnt vmcnt(0)
	v_perm_b32 v181, v181, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v181, 16, v180
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:180
	scratch_load_b32 v182, off, off offset:184
	s_waitcnt vmcnt(0)
	v_perm_b32 v180, v180, v182, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v182, off, off offset:196
	scratch_load_b32 v183, off, off offset:200
	s_waitcnt vmcnt(0)
	v_perm_b32 v182, v182, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v180, v182, 16, v180
	v_wmma_i32_16x16x16_iu4 v[162:169], v[188:189], v[180:181], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[242:243], v[180:181], v[170:177] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v225, v163 :: v_dual_mov_b32 v224, v162
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:308
	scratch_load_b32 v163, off, off offset:312
	v_dual_mov_b32 v221, v165 :: v_dual_mov_b32 v220, v164
	v_dual_mov_b32 v223, v167 :: v_dual_mov_b32 v222, v166
	v_mov_b32_e32 v211, v177
	v_mov_b32_e32 v213, v173
	v_mov_b32_e32 v215, v175
	v_mov_b32_e32 v217, v171
	v_dual_mov_b32 v219, v169 :: v_dual_mov_b32 v210, v176
	v_mov_b32_e32 v212, v172
	v_mov_b32_e32 v214, v174
	v_mov_b32_e32 v216, v170
	v_mov_b32_e32 v218, v168
	s_waitcnt vmcnt(0)
	v_perm_b32 v162, v162, v163, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v163, off, off offset:324
	scratch_load_b32 v164, off, off offset:328
	s_waitcnt vmcnt(0)
	v_perm_b32 v163, v163, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v163, 16, v162
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:268
	scratch_load_b32 v164, off, off offset:272
	s_waitcnt vmcnt(0)
	v_perm_b32 v162, v162, v164, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:276
	scratch_load_b32 v165, off, off offset:280
	s_waitcnt vmcnt(0)
	v_perm_b32 v164, v164, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v164, 16, v162
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:332
	scratch_load_b32 v165, off, off offset:336
	v_wmma_i32_16x16x16_iu4 v[146:153], v[186:187], v[162:163], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[194:195], v[162:163], v[154:161] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v164, v164, v165, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:340
	scratch_load_b32 v166, off, off offset:344
	s_waitcnt vmcnt(0)
	v_perm_b32 v165, v165, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v165, 16, v164
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:284
	scratch_load_b32 v166, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v164, v164, v166, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v166, off, off offset:292
	scratch_load_b32 v167, off, off offset:296
	s_waitcnt vmcnt(0)
	v_perm_b32 v166, v166, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v164, v166, 16, v164
	v_wmma_i32_16x16x16_iu4 v[146:153], v[188:189], v[164:165], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[242:243], v[164:165], v[154:161] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v241, v147 :: v_dual_mov_b32 v240, v146
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:396
	scratch_load_b32 v147, off, off offset:400
	v_dual_mov_b32 v237, v149 :: v_dual_mov_b32 v236, v148
	v_dual_mov_b32 v239, v151 :: v_dual_mov_b32 v238, v150
	v_mov_b32_e32 v227, v161
	v_dual_mov_b32 v229, v157 :: v_dual_mov_b32 v226, v160
	v_dual_mov_b32 v228, v156 :: v_dual_mov_b32 v231, v159
	v_dual_mov_b32 v230, v158 :: v_dual_mov_b32 v233, v155
	v_dual_mov_b32 v232, v154 :: v_dual_mov_b32 v235, v153
	v_mov_b32_e32 v234, v152
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v146, v147, 0xc0c0004
	v_perm_b32 v147, v9, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v147, 16, v146
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:380
	scratch_load_b32 v148, off, off offset:384
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v146, v148, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:388
	scratch_load_b32 v149, off, off offset:392
	s_waitcnt vmcnt(0)
	v_perm_b32 v148, v148, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v148, 16, v146
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:364
	scratch_load_b32 v149, off, off offset:368
	v_wmma_i32_16x16x16_iu4 v[138:145], v[194:195], v[146:147], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[186:187], v[146:147], v[130:137] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v148, v148, v149, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:372
	scratch_load_b32 v150, off, off offset:376
	s_waitcnt vmcnt(0)
	v_perm_b32 v149, v149, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:348
	scratch_load_b32 v150, off, off offset:352
	s_waitcnt vmcnt(0)
	v_perm_b32 v148, v148, v150, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v150, off, off offset:356
	scratch_load_b32 v151, off, off offset:360
	s_waitcnt vmcnt(0)
	v_perm_b32 v150, v150, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[138:145], v[242:243], v[148:149], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[188:189], v[148:149], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v243, v145 :: v_dual_mov_b32 v242, v144
	v_dual_mov_b32 v245, v141 :: v_dual_mov_b32 v244, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v247, v143 :: v_dual_mov_b32 v246, v142
	v_dual_mov_b32 v249, v139 :: v_dual_mov_b32 v248, v138
	v_dual_mov_b32 v251, v137 :: v_dual_mov_b32 v250, v136
	v_dual_mov_b32 v253, v133 :: v_dual_mov_b32 v252, v132
	v_dual_mov_b32 v255, v135 :: v_dual_mov_b32 v254, v134
	v_dual_mov_b32 v195, v131 :: v_dual_mov_b32 v194, v130
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v66, off, off offset:120
	scratch_load_b32 v97, off, off offset:396
	scratch_load_b32 v98, off, off offset:400
	scratch_load_b32 v68, off, off offset:64
	scratch_load_b32 v67, off, off offset:72
	scratch_load_b32 v83, off, off offset:84
	scratch_load_b32 v84, off, off offset:76
	scratch_load_b32 v85, off, off offset:68
	scratch_load_b32 v69, off, off offset:56
	scratch_load_b32 v81, off, off offset:32
	scratch_load_b32 v79, off, off offset:48
	scratch_load_b32 v80, off, off offset:40
	scratch_load_b32 v86, off, off offset:60
	scratch_load_b32 v87, off, off offset:52
	scratch_load_b32 v88, off, off offset:44
	scratch_load_b32 v89, off, off offset:36
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v82, s3, v197
	s_clause 0x8                            ; 44-byte Folded Reload
	scratch_load_b32 v90, off, off offset:28
	scratch_load_b32 v91, off, off offset:24
	scratch_load_b32 v92, off, off offset:20
	scratch_load_b32 v93, off, off offset:16
	scratch_load_b32 v94, off, off offset:12
	scratch_load_b32 v95, off, off offset:8
	scratch_load_b32 v96, off, off offset:4
	scratch_load_b64 v[130:131], off, off offset:300
	scratch_load_b64 v[138:139], off, off offset:316
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v70, s3, v66
	scratch_load_b32 v66, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt vmcnt(23)
	v_perm_b32 v97, v97, v98, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:380
	scratch_load_b32 v98, off, off offset:384
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v68, s3, v68
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v67, s3, v67
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v83, s3, v83
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v69, s3, v69
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v81, s3, v81
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v79, s3, v79
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v80, s3, v80
	v_add_nc_u32_e32 v84, s3, v84
	v_add_nc_u32_e32 v85, s3, v85
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v86, s3, v86
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v87, s3, v87
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v88, s3, v88
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v89, s3, v89
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v90, s3, v90
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v91, s3, v91
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v92, s3, v92
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v93, s3, v93
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v94, s3, v94
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v95, s3, v95
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v71, s3, v66
	scratch_load_b32 v66, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt vmcnt(1)
	v_perm_b32 v9, v9, v98, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v98, off, off offset:388
	scratch_load_b32 v99, off, off offset:392
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v72, s3, v66
	scratch_load_b32 v66, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt vmcnt(1)
	v_perm_b32 v98, v98, v99, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s3, v66
	scratch_load_b32 v66, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s3, v66
	scratch_load_b32 v66, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s3, v66
	scratch_load_b32 v66, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s3, v66
	scratch_load_b32 v66, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s3, v66
	scratch_load_b32 v66, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s3, v66
	scratch_load_b32 v66, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	ds_load_u8 v66, v66
	ds_load_u8 v81, v81
	ds_load_u8 v82, v82
	ds_load_u8 v79, v79
	ds_load_u8 v80, v80
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off          ; 4-byte Folded Reload
	v_add_nc_u32_e32 v96, s3, v96
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v0, 16, v97
	v_lshl_or_b32 v69, v69, 16, v68
	v_lshl_or_b32 v68, v79, 16, v81
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v98, 16, v9
	ds_load_u8 v0, v92
	ds_load_u8 v9, v93
	ds_load_u8 v79, v90
	ds_load_u8 v81, v96
	ds_load_u8 v80, v80
	ds_load_u8 v82, v94
	ds_load_u8 v90, v95
	ds_load_u8 v91, v91
	ds_load_u8 v84, v84
	ds_load_u8 v85, v85
	ds_load_u8 v78, v78
	ds_load_u8 v88, v88
	ds_load_u8 v89, v89
	ds_load_u8 v86, v86
	ds_load_u8 v87, v87
	ds_load_u8 v83, v83
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v92, off, off offset:364
	scratch_load_b32 v93, off, off offset:368
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[66:67], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v91, v79, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v83, v78, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v92, v92, v93, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v93, off, off offset:372
	scratch_load_b32 v94, off, off offset:376
	s_waitcnt vmcnt(0)
	v_perm_b32 v93, v93, v94, 0xc0c0004
	ds_load_u8 v94, v72
	ds_load_u8 v95, v73
	ds_load_u8 v96, v70
	ds_load_u8 v77, v77
	ds_load_u8 v97, v74
	ds_load_u8 v98, v75
	ds_load_u8 v99, v71
	ds_load_u8 v76, v76
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:348
	scratch_load_b32 v72, off, off offset:352
	v_perm_b32 v74, v80, v81, 0xc0c0004
	v_perm_b32 v75, v90, v82, 0xc0c0004
	v_perm_b32 v80, v89, v88, 0xc0c0004
	v_perm_b32 v81, v87, v86, 0xc0c0004
	v_lshl_or_b32 v71, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v77, v98, v97, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v70, v70, v72, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:356
	scratch_load_b32 v73, off, off offset:360
	s_waitcnt vmcnt(0)
	v_perm_b32 v72, v72, v73, 0xc0c0004
	v_lshl_or_b32 v73, v9, 16, v0
	v_perm_b32 v0, v95, v94, 0xc0c0004
	v_perm_b32 v9, v99, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v70, v72, 16, v70
	v_lshl_or_b32 v72, v75, 16, v74
	v_lshl_or_b32 v75, v78, 16, v79
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v78, off, off offset:308
	scratch_load_b32 v79, off, off offset:312
	v_lshl_or_b32 v74, v81, 16, v80
	v_wmma_i32_16x16x16_iu4 v[34:41], v[72:73], v[70:71], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[74:75], v[66:67], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v9, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:332
	scratch_load_b32 v9, off, off offset:336
	v_lshl_or_b32 v66, v77, 16, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[66:67], v[70:71], v[58:65] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_perm_b32 v78, v78, v79, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:324
	scratch_load_b32 v80, off, off offset:328
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v79, v79, v80, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:268
	scratch_load_b32 v81, off, off offset:272
	v_lshl_or_b32 v77, v79, 16, v78
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:340
	scratch_load_b32 v78, off, off offset:344
	s_waitcnt vmcnt(2)
	v_perm_b32 v80, v80, v81, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:276
	scratch_load_b32 v82, off, off offset:280
	s_waitcnt vmcnt(2)
	v_perm_b32 v9, v9, v78, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v78, off, off offset:284
	scratch_load_b32 v79, off, off offset:288
	s_waitcnt vmcnt(2)
	v_perm_b32 v81, v81, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v81, 16, v80
	s_waitcnt vmcnt(0)
	v_perm_b32 v78, v78, v79, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:292
	scratch_load_b32 v80, off, off offset:296
	v_wmma_i32_16x16x16_iu4 v[50:57], v[68:69], v[76:77], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[74:75], v[76:77], v[42:49] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v80, v79, v80, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:236
	scratch_load_b32 v81, off, off offset:240
	v_lshl_or_b32 v78, v80, 16, v78
	s_waitcnt vmcnt(0)
	v_perm_b32 v81, v79, v81, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:244
	scratch_load_b32 v82, off, off offset:248
	s_waitcnt vmcnt(0)
	v_perm_b32 v82, v79, v82, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:220
	scratch_load_b32 v83, off, off offset:224
	v_lshl_or_b32 v81, v82, 16, v81
	s_waitcnt vmcnt(0)
	v_perm_b32 v83, v79, v83, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:228
	scratch_load_b32 v84, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v84, v79, v84, 0xc0c0004
	v_lshl_or_b32 v79, v9, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:252
	scratch_load_b32 v9, off, off offset:256
	v_lshl_or_b32 v80, v84, 16, v83
	v_wmma_i32_16x16x16_iu4 v[50:57], v[72:73], v[78:79], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[78:79], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[68:69], v[80:81], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[74:75], v[80:81], v[18:25] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:260
	scratch_load_b32 v70, off, off offset:264
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v70, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:172
	scratch_load_b32 v71, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:188
	scratch_load_b32 v76, off, off offset:192
	s_waitcnt vmcnt(0)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:140
	scratch_load_b32 v77, off, off offset:144
	s_waitcnt vmcnt(0)
	v_perm_b32 v82, v77, v71, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:148
	scratch_load_b32 v77, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v83, v77, v71, 0xc0c0004
	v_lshl_or_b32 v71, v9, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:180
	scratch_load_b32 v9, off, off offset:184
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:196
	scratch_load_b32 v77, off, off offset:200
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v77, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v70
	v_lshl_or_b32 v76, v83, 16, v82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:204
	scratch_load_b32 v82, off, off offset:208
	v_wmma_i32_16x16x16_iu4 v[10:17], v[68:69], v[76:77], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[76:77], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v82, v82, v70, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:212
	scratch_load_b32 v83, off, off offset:216
	s_waitcnt vmcnt(0)
	v_perm_b32 v83, v83, v70, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:156
	scratch_load_b32 v84, off, off offset:160
	v_lshl_or_b32 v69, v83, 16, v82
	s_waitcnt vmcnt(0)
	v_perm_b32 v84, v84, v70, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:164
	scratch_load_b32 v85, off, off offset:168
	s_waitcnt vmcnt(0)
	v_perm_b32 v85, v85, v70, 0xc0c0004
	v_lshl_or_b32 v70, v9, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v68, v85, 16, v84
	v_wmma_i32_16x16x16_iu4 v[26:33], v[72:73], v[70:71], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[66:67], v[70:71], v[18:25] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[72:73], v[68:69], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v131, v129 :: v_dual_mov_b32 v130, v128
	v_dual_mov_b32 v139, v125 :: v_dual_mov_b32 v138, v124
	v_dual_mov_b32 v199, v127 :: v_dual_mov_b32 v198, v126
	v_dual_mov_b32 v201, v123 :: v_dual_mov_b32 v200, v122
	v_dual_mov_b32 v203, v121 :: v_dual_mov_b32 v202, v120
	v_dual_mov_b32 v205, v117 :: v_dual_mov_b32 v204, v116
	v_dual_mov_b32 v207, v119 :: v_dual_mov_b32 v206, v118
	v_dual_mov_b32 v209, v115 :: v_dual_mov_b32 v208, v114
	v_dual_mov_b32 v211, v113 :: v_dual_mov_b32 v210, v112
	v_dual_mov_b32 v213, v109 :: v_dual_mov_b32 v212, v108
	v_dual_mov_b32 v215, v111 :: v_dual_mov_b32 v214, v110
	v_dual_mov_b32 v217, v107 :: v_dual_mov_b32 v216, v106
	v_dual_mov_b32 v219, v105 :: v_dual_mov_b32 v218, v104
	v_dual_mov_b32 v221, v101 :: v_dual_mov_b32 v220, v100
	v_dual_mov_b32 v223, v103 :: v_dual_mov_b32 v222, v102
	v_dual_mov_b32 v225, v99 :: v_dual_mov_b32 v224, v98
	v_dual_mov_b32 v227, v97 :: v_dual_mov_b32 v226, v96
	v_dual_mov_b32 v229, v93 :: v_dual_mov_b32 v228, v92
	v_dual_mov_b32 v231, v95 :: v_dual_mov_b32 v230, v94
	v_dual_mov_b32 v233, v91 :: v_dual_mov_b32 v232, v90
	v_dual_mov_b32 v235, v89 :: v_dual_mov_b32 v234, v88
	v_dual_mov_b32 v237, v85 :: v_dual_mov_b32 v236, v84
	v_dual_mov_b32 v239, v87 :: v_dual_mov_b32 v238, v86
	v_dual_mov_b32 v241, v83 :: v_dual_mov_b32 v240, v82
	v_dual_mov_b32 v243, v81 :: v_dual_mov_b32 v242, v80
	v_dual_mov_b32 v245, v77 :: v_dual_mov_b32 v244, v76
	v_dual_mov_b32 v247, v79 :: v_dual_mov_b32 v246, v78
	v_dual_mov_b32 v249, v75 :: v_dual_mov_b32 v248, v74
	v_dual_mov_b32 v251, v73 :: v_dual_mov_b32 v250, v72
	v_dual_mov_b32 v253, v69 :: v_dual_mov_b32 v252, v68
	v_dual_mov_b32 v255, v71 :: v_dual_mov_b32 v254, v70
	v_dual_mov_b32 v195, v67 :: v_dual_mov_b32 v194, v66
.LBB0_17:
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v9, off, off offset:136
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_or_b32_e32 v105, 32, v196
	v_or_b32_e32 v106, 64, v196
	v_or_b32_e32 v111, 0x60, v196
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 128 22 is_stmt 0              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v66, s20, v105
	v_or_b32_e32 v67, s20, v106
	v_or_b32_e32 v68, s20, v111
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s12, s4
	v_lshlrev_b32_e32 v66, 1, v66
	v_lshlrev_b32_e32 v67, 1, v67
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 125 39 is_stmt 1              ; generate_amdgcn.py:125:39
	s_add_i32 s0, s2, s11
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v98, v59
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v61, v42
	v_cvt_f32_i32_e32 v42, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v23, v12
	v_cvt_f32_i32_e32 v12, v8
	v_cvt_f32_i32_e32 v172, v10
	v_cvt_f32_i32_e32 v103, v2
	v_cvt_f32_i32_e32 v132, v39
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v47, v3
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v72, v131
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v131, v38
	v_cvt_f32_i32_e32 v167, v51
	v_cvt_f32_i32_e32 v110, v56
	v_cvt_f32_i32_e32 v51, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v170, v26
	v_cvt_f32_i32_e32 v56, v19
	v_cvt_f32_i32_e32 v19, v25
	v_cvt_f32_i32_e32 v165, v35
	v_cvt_f32_i32_e32 v117, v41
	v_cvt_f32_i32_e32 v97, v58
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v127, v55
	v_cvt_f32_i32_e32 v112, v57
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v49, v30
	v_cvt_f32_i32_e32 v60, v31
	v_cvt_f32_i32_e32 v107, v32
	v_cvt_f32_i32_e32 v109, v33
	v_cvt_f32_i32_e32 v33, v20
	v_cvt_f32_i32_e32 v43, v14
	v_cvt_f32_i32_e32 v32, v15
	v_cvt_f32_i32_e32 v57, v16
	v_cvt_f32_i32_e32 v55, v17
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s1, s20, s11
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v168, v50
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_add_i32 s1, s1, s2
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v141, v52
	v_cvt_f32_i32_e32 v143, v53
	v_cvt_f32_i32_e32 v50, v44
	v_cvt_f32_i32_e32 v169, v27
	v_cvt_f32_i32_e32 v44, v28
	v_cvt_f32_i32_e32 v27, v5
	v_cvt_f32_i32_e32 v28, v6
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, s11, v105
	v_mul_lo_u32 v5, s11, v106
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v71, v130
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v166, v34
	v_cvt_f32_i32_e32 v147, v36
	v_cvt_f32_i32_e32 v116, v40
	v_cvt_f32_i32_e32 v40, v62
	v_cvt_f32_i32_e32 v36, v64
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v48, v4
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v160, v194
	v_cvt_f32_i32_e32 v164, v208
	v_cvt_f32_i32_e32 v87, v138
	v_cvt_f32_i32_e32 v88, v139
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v171, v11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v163, v209
	v_cvt_f32_i32_e32 v161, v241
	v_cvt_f32_i32_e32 v162, v240
	v_cvt_f32_i32_e32 v159, v195
	v_cvt_f32_i32_e32 v113, v202
	v_cvt_f32_i32_e32 v114, v203
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v148, v37
	v_cvt_f32_i32_e32 v37, v65
	v_cvt_f32_i32_e32 v65, v1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s11, v196
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v79, v198
	v_cvt_f32_i32_e32 v128, v206
	v_cvt_f32_i32_e32 v96, v201
	v_cvt_f32_i32_e32 v145, v205
	v_cvt_f32_i32_e32 v144, v204
	v_cvt_f32_i32_e32 v129, v207
	v_cvt_f32_i32_e32 v81, v212
	v_cvt_f32_i32_e32 v80, v199
	v_cvt_f32_i32_e32 v95, v200
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v11, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v150, v225
	v_cvt_f32_i32_e32 v149, v224
	v_cvt_f32_i32_e32 v140, v253
	v_cvt_f32_i32_e32 v136, v237
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v175.h, v7.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v137, v252
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v134, v221
	v_cvt_f32_i32_e32 v135, v236
	v_cvt_f32_i32_e32 v133, v220
	v_cvt_f32_i32_e32 v122, v254
	v_cvt_f32_i32_e32 v125, v255
	v_cvt_f32_i32_e32 v118, v222
	v_cvt_f32_i32_e32 v120, v238
	v_cvt_f32_i32_e32 v108, v251
	v_cvt_f32_i32_e32 v121, v239
	v_cvt_f32_i32_e32 v119, v223
	v_cvt_f32_i32_e32 v104, v250
	v_cvt_f32_i32_e32 v102, v235
	v_cvt_f32_i32_e32 v101, v234
	v_cvt_f32_i32_e32 v100, v219
	v_cvt_f32_i32_e32 v99, v218
	v_cvt_f32_i32_e32 v94, v249
	v_cvt_f32_i32_e32 v93, v248
	v_cvt_f32_i32_e32 v92, v233
	v_cvt_f32_i32_e32 v91, v232
	v_cvt_f32_i32_e32 v90, v217
	v_cvt_f32_i32_e32 v89, v216
	v_cvt_f32_i32_e32 v85, v244
	v_cvt_f32_i32_e32 v86, v245
	v_cvt_f32_i32_e32 v84, v229
	v_cvt_f32_i32_e32 v83, v228
	v_cvt_f32_i32_e32 v82, v213
	v_cvt_f32_i32_e32 v77, v246
	v_cvt_f32_i32_e32 v78, v247
	v_cvt_f32_i32_e32 v76, v231
	v_cvt_f32_i32_e32 v75, v230
	v_cvt_f32_i32_e32 v73, v214
	v_cvt_f32_i32_e32 v74, v215
	v_cvt_f32_i32_e32 v70, v242
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(0)
	v_and_or_b32 v115, v9, 1, v0
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s20, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v0, 2, v115
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v69, s2, v115
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v8, 4, v115
	v_or_b32_e32 v10, 6, v115
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x3
	buffer_load_u16 v151, v9, s[12:15], 0 offen
	buffer_load_u16 v152, v66, s[12:15], 0 offen
	buffer_load_u16 v153, v67, s[12:15], 0 offen
	buffer_load_u16 v154, v68, s[12:15], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v9, s2, v0
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 1, v69
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v0, s0, v0, 1
	v_add_lshl_u32 v67, s0, v115, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	v_lshlrev_b32_e32 v9, 1, v9
	s_clause 0x3
	buffer_load_u16 v155, v66, s[12:15], 0 offen
	buffer_load_u16 v156, v0, s[12:15], 0 offen
	buffer_load_u16 v157, v67, s[12:15], 0 offen
	buffer_load_u16 v158, v9, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v2, s0, v8, 1
	v_add_lshl_u32 v3, s0, v10, 1
	s_clause 0x1
	buffer_load_u16 v173, v2, s[12:15], 0 offen
	buffer_load_u16 v174, v3, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v25, 0x82, v115
	v_or_b32_e32 v26, 0x80, v115
	v_or_b32_e32 v45, 10, v115
	v_or_b32_e32 v46, 8, v115
	v_or_b32_e32 v14, 0x8c, v115
	v_or_b32_e32 v15, 0x8a, v115
	v_or_b32_e32 v16, 0x88, v115
	v_or_b32_e32 v17, 0x86, v115
	v_or_b32_e32 v20, 0x84, v115
	v_or_b32_e32 v30, 14, v115
	v_or_b32_e32 v31, 12, v115
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v52, s2, v46
	v_or_b32_e32 v53, s2, v45
	v_or_b32_e32 v105, s2, v26
	v_or_b32_e32 v106, s2, v25
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v2, s11, v111
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v8, s2, v8
	v_or_b32_e32 v10, s2, v10
	v_or_b32_e32 v62, s2, v31
	v_or_b32_e32 v64, s2, v30
	v_or_b32_e32 v111, s2, v20
	v_or_b32_e32 v124, s2, v15
	v_or_b32_e32 v126, s2, v14
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v46, s0, v46, 1
	v_add_lshl_u32 v45, s0, v45, 1
	v_add_lshl_u32 v31, s0, v31, 1
	v_add_lshl_u32 v30, s0, v30, 1
	v_add_lshl_u32 v26, s0, v26, 1
	v_add_lshl_u32 v25, s0, v25, 1
	v_add_lshl_u32 v20, s0, v20, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v52, 1, v52
	v_lshlrev_b32_e32 v53, 1, v53
	v_lshlrev_b32_e32 v105, 1, v105
	v_lshlrev_b32_e32 v106, 1, v106
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v15, s0, v15, 1
	v_add_lshl_u32 v14, s0, v14, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v8, 1, v8
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v176, 1, v62
	v_lshlrev_b32_e32 v177, 1, v64
	v_lshlrev_b32_e32 v178, 1, v111
	v_lshlrev_b32_e32 v181, 1, v124
	v_lshlrev_b32_e32 v182, 1, v126
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v210
	v_cvt_f32_i32_e32 v9, v211
	v_cvt_f32_i32_e32 v69, v243
	v_cvt_f32_i32_e32 v68, v227
	v_cvt_f32_i32_e32 v67, v226
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s11, s15
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v123, 0x78, v0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v0, v54
	v_cvt_f32_i32_e32 v54, v18
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v24, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v13, 0x8e, v115
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v4, s1, v123
	v_add3_u32 v3, s1, v123, 0x80
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v115, s2, v17
	v_or_b32_e32 v123, s2, v16
	v_or_b32_e32 v130, s2, v13
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v16, s0, v16, 1
	v_add_lshl_u32 v17, s0, v17, 1
	v_add_lshl_u32 v13, s0, v13, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v179, 1, v115
	v_lshlrev_b32_e32 v180, 1, v123
	v_lshlrev_b32_e32 v183, 1, v130
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x19
	buffer_load_u16 v142, v46, s[12:15], 0 offen
	buffer_load_u16 v146, v45, s[12:15], 0 offen
	buffer_load_u16 v126, v31, s[12:15], 0 offen
	buffer_load_u16 v130, v30, s[12:15], 0 offen
	buffer_load_u16 v111, v26, s[12:15], 0 offen
	buffer_load_u16 v115, v25, s[12:15], 0 offen
	buffer_load_u16 v62, v20, s[12:15], 0 offen
	buffer_load_u16 v64, v17, s[12:15], 0 offen
	buffer_load_u16 v45, v16, s[12:15], 0 offen
	buffer_load_u16 v46, v15, s[12:15], 0 offen
	buffer_load_u16 v25, v14, s[12:15], 0 offen
	buffer_load_u16 v26, v13, s[12:15], 0 offen
	buffer_load_u16 v184, v8, s[12:15], 0 offen
	buffer_load_u16 v185, v10, s[12:15], 0 offen
	buffer_load_u16 v138, v52, s[12:15], 0 offen
	buffer_load_u16 v139, v53, s[12:15], 0 offen
	buffer_load_u16 v123, v176, s[12:15], 0 offen
	buffer_load_u16 v124, v177, s[12:15], 0 offen
	buffer_load_u16 v105, v105, s[12:15], 0 offen
	buffer_load_u16 v106, v106, s[12:15], 0 offen
	buffer_load_u16 v52, v178, s[12:15], 0 offen
	buffer_load_u16 v53, v179, s[12:15], 0 offen
	buffer_load_u16 v30, v180, s[12:15], 0 offen
	buffer_load_u16 v31, v181, s[12:15], 0 offen
	buffer_load_u16 v16, v182, s[12:15], 0 offen
	buffer_load_u16 v20, v183, s[12:15], 0 offen
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v13, 16, v151
	v_lshlrev_b32_e32 v10, 16, v152
	v_lshlrev_b32_e32 v15, 16, v154
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v151, 16, v157
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v8, 16, v153
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v17, 16, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v155, v15, v151 :: v_dual_lshlrev_b32 v152, 16, v158
	v_mul_f32_e32 v158, v13, v151
	v_mul_f32_e32 v178, v10, v151
	v_mul_f32_e32 v151, v8, v151
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v155, v155, v172 :: v_dual_mul_f32 v158, v158, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v151, v151, v170
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v181, v10, v152
	v_mul_f32_e32 v176, v10, v17
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v161, v181, v161
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v180, v13, v152
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v14, 16, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v156, v13, v17 :: v_dual_mul_f32 v159, v180, v159
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v177, v10, v14 :: v_dual_mul_f32 v156, v156, v160
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v160, v176, v162 :: v_dual_mul_f32 v153, v15, v17
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v157, v13, v14 :: v_dual_mul_f32 v162, v178, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v153, v153, v164
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v164, v177, v167
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v154, v15, v14
	v_dual_mul_f32 v14, v8, v14 :: v_dual_mul_f32 v179, v15, v152
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v157, v157, v165 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v154, v154, v171
	v_dual_mul_f32 v165, v14, v169 :: v_dual_mul_f32 v14, v179, v163
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v168, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v163, 0xbfb8aa3b, v154
	v_mul_f32_e32 v167, 0xbfb8aa3b, v157
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v168
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v169
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v163
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v167
	v_cndmask_b32_e64 v166, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v168, 0, 0x42800000, s1
	v_cndmask_b32_e64 v169, 0, 0x42800000, s4
	v_cndmask_b32_e64 v163, 0, 0x42800000, s0
	v_mul_f32_e32 v172, 0xbfb8aa3b, v151
	v_dual_mul_f32 v170, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v167, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v163, 0xbfb8aa3b, v154 :: v_dual_fmac_f32 v166, 0xbfb8aa3b, v155
	v_dual_fmac_f32 v168, 0xbfb8aa3b, v158 :: v_dual_fmac_f32 v169, 0xbfb8aa3b, v164
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v170
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v163, v163
	v_fmac_f32_e32 v167, 0xbfb8aa3b, v157
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v172
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, s0
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v169, v169
	v_cndmask_b32_e64 v170, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v171
	v_exp_f32_e32 v168, v168
	v_exp_f32_e32 v167, v167
	v_cndmask_b32_e64 v172, 0, 0x42800000, s5
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, s4
	v_ldexp_f32 v163, v163, v177
	v_cndmask_b32_e64 v171, 0, 0x42800000, s6
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v170, 0xbfb8aa3b, v162
	v_ldexp_f32 v166, v166, v176
	v_ldexp_f32 v169, v169, v181
	v_fmac_f32_e32 v172, 0xbfb8aa3b, v151
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v163, 1.0, v163
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v171, 0xbfb8aa3b, v165
	v_exp_f32_e32 v170, v170
	v_ldexp_f32 v168, v168, v178
	v_ldexp_f32 v167, v167, v179
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v166, 1.0, v166 :: v_dual_add_f32 v169, 1.0, v169
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v172, v172
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v178, null, v163, v163, v154
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, s3
	v_exp_f32_e32 v171, v171
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v167, 1.0, v167 :: v_dual_add_f32 v168, 1.0, v168
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, s5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v193, v178
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v183, 0, 0xffffffc0, s6
	v_ldexp_f32 v170, v170, v180
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v180, null, v168, v168, v158
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v172, v172, v182
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v171, v171, v183
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v170, 1.0, v170
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v188, null, v169, v169, v164
	v_rcp_f32_e32 v194, v180
	v_div_scale_f32 v176, null, v166, v166, v155
	v_fma_f32 v202, -v178, v193, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v172, 1.0, v172 :: v_dual_add_f32 v171, 1.0, v171
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v186, null, v170, v170, v162
	v_rcp_f32_e32 v197, v188
	v_div_scale_f32 v182, null, v167, v167, v157
	v_rcp_f32_e32 v192, v176
	v_fmac_f32_e32 v193, v202, v193
	v_div_scale_f32 v190, null, v172, v172, v151
	v_rcp_f32_e32 v196, v186
	v_fma_f32 v203, -v180, v194, 1.0
	v_rcp_f32_e32 v195, v182
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v198, v190
	v_div_scale_f32 v179, s0, v154, v163, v154
	v_div_scale_f32 v181, s1, v158, v168, v158
	v_fma_f32 v206, -v188, v197, 1.0
	v_fmac_f32_e32 v194, v203, v194
	v_fma_f32 v201, -v176, v192, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v205, -v186, v196, 1.0
	v_div_scale_f32 v177, vcc_lo, v155, v166, v155
	v_fmac_f32_e32 v197, v206, v197
	v_dual_mul_f32 v202, v179, v193 :: v_dual_mul_f32 v203, v181, v194
	v_fma_f32 v204, -v182, v195, 1.0
	v_fma_f32 v207, -v190, v198, 1.0
	v_fmac_f32_e32 v192, v201, v192
	v_div_scale_f32 v187, s3, v162, v170, v162
	v_fma_f32 v210, -v180, v203, v181
	v_dual_fmac_f32 v196, v205, v196 :: v_dual_fmac_f32 v195, v204, v195
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v198, v207, v198 :: v_dual_mul_f32 v201, v177, v192
	v_div_scale_f32 v183, s2, v157, v167, v157
	v_div_scale_f32 v189, s4, v164, v169, v164
	v_fmac_f32_e32 v203, v210, v194
	v_mul_f32_e32 v205, v187, v196
	v_fma_f32 v207, -v176, v201, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v206, v189, v197
	v_fma_f32 v209, -v178, v202, v179
	v_div_scale_f32 v191, null, v171, v171, v165
	v_fma_f32 v212, -v186, v205, v187
	v_mul_f32_e32 v204, v183, v195
	v_dual_fmac_f32 v201, v207, v192 :: v_dual_fmac_f32 v202, v209, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v199, v191
	v_fmac_f32_e32 v205, v212, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v211, -v182, v204, v183
	v_fma_f32 v176, -v176, v201, v177
	v_fma_f32 v177, -v178, v202, v179
	v_fma_f32 v178, -v180, v203, v181
	v_div_scale_f32 v200, s5, v151, v172, v151
	v_fmac_f32_e32 v204, v211, v195
	v_div_fmas_f32 v176, v176, v192, v201
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v207, -v188, v206, v189
	v_div_fmas_f32 v177, v177, v193, v202
	v_fma_f32 v179, -v182, v204, v183
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v208, -v191, v199, 1.0
	v_div_fmas_f32 v178, v178, v194, v203
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v206, v207, v197
	v_div_fmas_f32 v179, v179, v195, v204
	v_fmac_f32_e32 v199, v208, v199
	v_div_fixup_f32 v158, v178, v168, v158
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v155, v176, v166, v155
	v_div_fixup_f32 v157, v179, v167, v157
	v_mul_f32_e32 v180, v200, v198
	v_fma_f32 v167, -v186, v205, v187
	v_fma_f32 v179, -v188, v206, v189
	v_div_fixup_f32 v154, v177, v163, v154
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v157, v159, v157
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v159, s0, v165, v171, v165
	v_div_fmas_f32 v166, v167, v196, v205
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v175.l, v157.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v156, v156, v158
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v158, v179, v197, v206
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v153, v153, v155 :: v_dual_mul_f32 v154, v14, v154
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v163, 1, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v7.l, v156.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v155, v158, v169, v164
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v162, v166, v170, v162
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v157, v157, v163, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v17, v8, v17 :: v_dual_and_b32 v158, 1, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v155, v161, v155
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v161.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v14.h, 0x7fff, v157.h, vcc_lo
	v_add3_u32 v158, v156, v158, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v156, v160, v162
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v160, -v190, v180, v200
	v_mul_f32_e32 v157, v159, v199
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v161.l, v155.h
	v_cndmask_b16 v14.l, 0x7fff, v158.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v180, v160, v198
	v_fma_f32 v162, -v191, v157, v159
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v158, 1, v161
	v_mov_b16_e64 v7.l, v156.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v149, v17, v149
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v161, -v190, v180, v200
	v_fmac_f32_e32 v157, v162, v199
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v158, v155, v158, 0x7fff
	v_and_b32_e32 v160, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v161, v161, v198, v180
	v_fma_f32 v159, -v191, v157, v159
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v151, v161, v172, v151
	v_div_fmas_f32 v157, v159, v199, v157
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v152, v8, v152 :: v_dual_lshlrev_b32 v159, 16, v174
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v155, v15, v159 :: v_dual_mul_f32 v150, v152, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v152, v157, v171, v165
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.h, 0x7fff, v158.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v155, v155, v24 :: v_dual_mul_f32 v24, v149, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v150, v150, v152
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v152, v156, v160, 0x7fff
	v_mov_b16_e64 v149.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v151, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v149.l, v150.h
	v_cmp_o_f32_e64 s1, v150, v150
	v_cndmask_b16 v17.l, 0x7fff, v152.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v149, 1, v149
	v_mov_b16_e32 v7.l, v24.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v151, 0, 0x42800000, s0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v156, 16, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v149, v150, v149, 0x7fff
	v_and_b32_e32 v158, 1, v7
	v_mov_b16_e64 v7.l, v153.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v151, 0xbfb8aa3b, v155
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v157, v15, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v152, v24, v158, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v150, v157, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v157.l, v154.h
	v_mov_b16_e64 v157.h, v7.h
	v_cndmask_b16 v23.h, 0x7fff, v149.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v149, v151
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v7
	v_cndmask_b16 v23.l, 0x7fff, v152.h, s0
	v_and_b32_e32 v157, 1, v157
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v151, 0xbfb8aa3b, v150
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v154, v154
	v_add3_u32 v152, v153, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v154, v157, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v151
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v157, v13, v159
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v149, v149, v158
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v151, 0, 0x42800000, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v148, v157, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v149, 1.0, v149
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v151, 0xbfb8aa3b, v150
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v157, v13, v156 :: v_dual_lshlrev_b32 v162, 16, v185
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v164, 16, v184
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v152.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v151, v151
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v147, v157, v147
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v123, 16, v123
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v151, v151, v154
	v_mul_f32_e32 v154, 0xbfb8aa3b, v148
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v158, null, v149, v149, v155
	v_div_scale_f32 v161, s1, v155, v149, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v153, v158
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v151, 1.0, v151 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v152, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v160, null, v151, v151, v150
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v152, 0xbfb8aa3b, v148
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v154, -v158, v153, 1.0
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v152, v152
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v153, v154, v153 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v26, 16, v26
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v152, v152, v163
	v_dual_mul_f32 v157, 0xbfb8aa3b, v147 :: v_dual_add_f32 v152, 1.0, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v157
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v157, v160
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v154, 0, 0x42800000, s0
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v154, 0xbfb8aa3b, v147
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v166, -v160, v157, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v154, v154
	v_ldexp_f32 v154, v154, v168
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v168, null, v152, v152, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v154, 1.0, v154
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v170, v168
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v163, v15, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v165, v161, v153 :: v_dual_mul_f32 v144, v163, v144
	v_fma_f32 v167, -v158, v165, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v167, v153
	v_fma_f32 v158, -v158, v165, v161
	v_div_scale_f32 v161, null, v154, v154, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v153, v158, v153, v165
	v_rcp_f32_e32 v158, v161
	v_fmac_f32_e32 v157, v166, v157
	v_div_scale_f32 v166, s0, v150, v151, v150
	v_fma_f32 v165, -v168, v170, 1.0
	v_div_fixup_f32 v149, v153, v149, v155
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v169, v166, v157
	v_div_scale_f32 v155, s1, v148, v152, v148
	v_fmac_f32_e32 v170, v165, v170
	v_fma_f32 v171, -v160, v169, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v169, v171, v157
	v_fma_f32 v153, -v160, v169, v166
	v_fma_f32 v160, -v161, v158, 1.0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v166, v10, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v158, v160, v158
	v_div_fmas_f32 v153, v153, v157, v169
	v_mul_f32_e32 v157, v155, v170
	v_div_scale_f32 v160, s0, v147, v154, v147
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v141, v166, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v150, v153, v151, v150
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v151, v10, v159
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v163, -v168, v157, v155
	v_mul_f32_e32 v165, v160, v158
	s_mov_b32 vcc_lo, s1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v153, v13, v164
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v143, v151, v143
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v167, v15, v162
	v_mul_f32_e32 v151, v13, v162
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v157, v163, v170
	v_fma_f32 v163, -v161, v165, v160
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v166, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v137, v153, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v140, v151, v140
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v151, -v168, v157, v155
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v155, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v166
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v165, v163, v158
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v144, v144, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v151, v151, v170, v157
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v155
	v_cndmask_b32_e64 v163, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v157, -v161, v165, v160
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v148, v151, v152, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v155, 0, 0x42800000, s1
	v_fmac_f32_e32 v163, 0xbfb8aa3b, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v157, v157, v158, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v145, v167, v145 :: v_dual_mul_f32 v140, v140, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v155, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v153, v163
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v147, v157, v154, v147
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v145, v145, v149
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v148, v155
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s1
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v137, v137, v147
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v140.h
	v_cmp_o_f32_e64 s0, v140, v140
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v161, v10, v164
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v147, v153, v150
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v153, v8, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v151, 1, v7
	v_mov_b16_e64 v150.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v148, v148, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v147, 1.0, v147 :: v_dual_mul_f32 v44, v153, v44
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v149, v8, v159
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v151, v140, v151, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v148, 1.0, v148 :: v_dual_mul_f32 v135, v161, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v156, 0xbfb8aa3b, v44
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v152, null, v147, v147, v143
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v149, v149, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v155, null, v148, v148, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v154, v152
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v156
	v_mul_f32_e32 v29, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v153, v155
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v156, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v151.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v140, -v152, v154, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v156, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v157, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v154, v140, v154
	v_fma_f32 v140, -v155, v153, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v157, 0xbfb8aa3b, v149
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v153, v140, v153
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v140, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v151, v157
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v157, s0, v143, v147, v143
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v159, v157, v154
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v140, v140, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v151, v151, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v163, -v152, v159, v157
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v160, v10, v162
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v140, 1.0, v140
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v158, s2, v141, v148, v141
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v151, 1.0, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v159, v163, v154 :: v_dual_mul_f32 v136, v160, v136
	v_mul_f32_e32 v156, v158, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v163, null, v151, v151, v149
	v_fma_f32 v152, -v152, v159, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v165, -v155, v156, v158
	v_rcp_f32_e32 v160, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v152, v152, v154, v159
	v_fmac_f32_e32 v156, v165, v153
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v165, null, v140, v140, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v143, v152, v147, v143
	v_fma_f32 v155, -v155, v156, v158
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v154, -v163, v160, 1.0
	v_rcp_f32_e32 v157, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v136, v136, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v153, v155, v153, v156
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v143.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v160, v154, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v136.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v141, v153, v148, v141
	v_div_scale_f32 v148, vcc_lo, v149, v151, v149
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v147, -v165, v157, 1.0
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v135, v135, v141 :: v_dual_and_b32 v154, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v141, v148, v160
	v_fmac_f32_e32 v157, v147, v157
	v_div_scale_f32 v147, s0, v44, v140, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v152, -v163, v141, v148
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v143.l, v135.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v141, v152, v160
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v152, v8, v164
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v150.l, v137.h
	v_cmp_o_f32_e64 s1, v137, v137
	v_and_b32_e32 v143, 1, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v148, -v163, v141, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v133, v152, v133 :: v_dual_and_b32 v150, 1, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v141, v148, v160, v141
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v150, v137, v150, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v137, v147, v157
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v150.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v153, -v165, v137, v147
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v150, v136, v154, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v137, v153, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v165, v137, v147
	v_div_fmas_f32 v137, v147, v157, v137
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v147, v15, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_add3_u32 v136, v135, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v44, v137, v140, v44
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v140, 16, v142
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v153, v8, v162
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v137, v147, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v150.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v44, v133, v44
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v142, v15, v140
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v134, v153, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v141, v141, v151, v149
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v133, 0xbfb8aa3b, v137
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_mov_b16_e64 v135.l, v44.h
	v_mov_b16_e64 v135.h, v7.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v134, v134, v141
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v133
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v136.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v135, 1, v135
	v_mov_b16_e64 v7.l, v134.h
	v_cmp_o_f32_e64 s1, v134, v134
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v133, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v135, v44, v135, 0x7fff
	v_and_b32_e32 v141, 1, v7
	v_mov_b16_e64 v7.l, v145.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v133, 0xbfb8aa3b, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v141, v134, v141, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v134, v142, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v133, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v141.l, v144.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v141.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v136, 0xbfb8aa3b, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v141.h, v7.h
	v_cmp_o_f32_e64 s0, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v136
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v141
	v_and_b32_e32 v141, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v133, v133, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v135.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v136, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v135, v144, v44, 0x7fff
	v_add3_u32 v44, v145, v141, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v141, v13, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v133, 1.0, v133 :: v_dual_fmac_f32 v136, 0xbfb8aa3b, v134
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v132, v141, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v142, null, v133, v133, v137
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v136, v136
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v144, v13, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v135.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v141, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v145, v145
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v147, s1, v137, v133, v137
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v131, v144, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v136, v136, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v143, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v144, 0xbfb8aa3b, v131
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v135, 1.0, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v143, -v142, v141, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v144
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v145, null, v135, v135, v134
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v136, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v141, v143, v141
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v143, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v144, v145
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v136, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v149, v147, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v131
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v136, v136
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v151, -v142, v149, v147
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v143, v143
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v150, -v145, v144, 1.0
	v_fmac_f32_e32 v149, v151, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v151, v15, v139 :: v_dual_fmac_f32 v144, v150, v144
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v150, s0, v134, v135, v134
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v136, v136, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v143, v143, v152
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v142, -v142, v149, v147
	v_dual_mul_f32 v153, v150, v144 :: v_dual_mul_f32 v148, v15, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v136, 1.0, v136 :: v_dual_mul_f32 v129, v151, v129
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v141, v142, v141, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v155, -v145, v153, v150
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v152, null, v136, v136, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v133, v141, v133, v137
	v_fmac_f32_e32 v153, v155, v144
	v_div_scale_f32 v141, s1, v132, v136, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v154, v152
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v128, v148, v128
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v137, -v145, v153, v150
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v150, v10, v140 :: v_dual_mul_f32 v129, v129, v133
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v143, 1.0, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v137, v137, v144, v153
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v0, v150, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v149, -v152, v154, 1.0
	v_div_fixup_f32 v134, v137, v135, v134
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v135, v10, v146
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v137, v13, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v154, v149, v154
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v128, v128, v134 :: v_dual_mul_f32 v127, v135, v127
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v135, v13, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v144, v141, v154
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v122, v137, v122
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v150, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v125, v135, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v148, -v152, v144, v141
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v144, v148, v154
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v135, -v152, v144, v141
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v141, 0xbfb8aa3b, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v135, v135, v154, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v141
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v132, v135, v136, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v141, 0, 0x42800000, s1
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s1
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v125, v125, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v141, 0xbfb8aa3b, v0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v125.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v132, v141
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v135, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v135, v125, v135, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v133, v8, v146 :: v_dual_add_f32 v132, 1.0, v132
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v60, v133, v60
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v147, null, v143, v143, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v142, v147
	v_fma_f32 v145, -v147, v142, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v145, v142
	v_div_scale_f32 v145, s0, v131, v143, v131
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v125, v125
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v149, v145, v142
	v_fma_f32 v148, -v147, v149, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v149, v148, v142
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v148, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v144, -v147, v149, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v148, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v147, v10, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v142, v144, v142, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v137, v148
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v120, v147, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v144, s2, v0, v132, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v131, v142, v143, v131
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v122, v122, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v131, v137, v134
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v137, v8, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v134.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v140, null, v132, v132, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v134.l, v122.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v137, v137, v49
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v131, 1.0, v131
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v141, v140
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v134, 1, v134
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v142, 0xbfb8aa3b, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.h, 0x7fff, v135.h, s0
	v_add3_u32 v134, v122, v134, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v142
	v_cndmask_b32_e64 v143, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v142, 0, 0x42800000, s1
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v122, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v143, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v142, 0xbfb8aa3b, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.l, 0x7fff, v134.h, s1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v134, v8, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v136, null, v131, v131, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v135, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v143, s0, v127, v131, v127
	v_rcp_f32_e32 v133, v136
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v118, v134, v118
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v125, -v136, v133, 1.0
	v_fmac_f32_e32 v133, v125, v133
	v_fma_f32 v125, -v140, v141, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v145, v143, v133
	v_fmac_f32_e32 v141, v125, v141
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v125, v142
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v148, -v136, v145, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v135, v135, v142
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v142, v144, v141
	v_fmac_f32_e32 v145, v148, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v125, v125, v146
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v135, 1.0, v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v149, -v140, v142, v144
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v146, v10, v139
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v136, -v136, v145, v143
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v148, null, v135, v135, v60
	v_fmac_f32_e32 v142, v149, v141
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v121, v146, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v149, null, v125, v125, v137
	v_rcp_f32_e32 v146, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v140, -v140, v142, v144
	v_div_fmas_f32 v133, v136, v133, v145
	v_rcp_f32_e32 v143, v149
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v136, v140, v141, v142
	v_div_fixup_f32 v127, v133, v131, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v140, -v148, v146, 1.0
	v_div_fixup_f32 v0, v136, v132, v0
	v_div_scale_f32 v132, vcc_lo, v60, v135, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v131, -v149, v143, 1.0
	v_fmac_f32_e32 v146, v140, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v0, v120, v0 :: v_dual_mul_f32 v121, v121, v127
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v127.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v143, v131, v143
	v_div_scale_f32 v131, s0, v137, v125, v137
	v_mul_f32_e32 v120, v132, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v121.h
	v_mov_b16_e32 v127.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v122, v131, v143
	v_fma_f32 v133, -v148, v120, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v140, 1, v7
	v_and_b32_e32 v127, 1, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v136, -v149, v122, v131
	v_fmac_f32_e32 v120, v133, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v133, v121, v140, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v122, v136, v143
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v136, v8, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v132, -v148, v120, v132
	v_fma_f32 v131, -v149, v122, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v119, v136, v119
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v120, v132, v146, v120
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v122, v131, v143, v122
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v60, v120, v135, v60
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v120, v15, v130
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v121, v0, v127, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v122, v122, v125, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v121.l, v128.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v60, v119, v60 :: v_dual_mul_f32 v119, v120, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.h, 0x7fff, v133.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v118, v118, v122
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v122, 16, v126
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v7.l, v60.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v119
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v120.l, v118.h
	v_mov_b16_e32 v120.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v126, v15, v122 :: v_dual_and_b32 v125, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v120, 1, v120
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v126, v126, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v125, v60, v125, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.l, 0x7fff, v121.h, vcc_lo
	v_add3_u32 v60, v118, v120, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v120, 0xbfb8aa3b, v126
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.h, 0x7fff, v125.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v129.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v121.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v0, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v118, v118
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v120, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v118, 1, v121
	v_and_b32_e32 v121, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v126
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v118, v128, v118, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v0, v0, v125
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v129, v121, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v121, v13, v130
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v120, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v128, v13, v122
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v117, v121, v117
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v129, v129
	v_cndmask_b16 v60.l, 0x7fff, v118.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v125, null, v0, v0, v119
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v116, v128, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v120, v120, v127
	v_mul_f32_e32 v127, 0xbfb8aa3b, v117
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v121, v125
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v128, 0xbfb8aa3b, v116
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v118, 1.0, v120
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v127
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v131, s1, v119, v0, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v128
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v129, null, v118, v118, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v127, -v125, v121, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v120, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v128, v129
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v121, v127, v121
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v127, 0, 0x42800000, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v133, v131, v121
	v_fma_f32 v134, -v129, v128, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v120, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v135, -v125, v133, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v128, v134, v128
	v_div_scale_f32 v134, s0, v126, v118, v126
	v_fmac_f32_e32 v133, v135, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v137, v134, v128
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v120, v120, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v125, -v125, v133, v131
	v_fma_f32 v139, -v129, v137, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v121, v125, v121, v133
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v137, v139, v128
	v_div_fixup_f32 v0, v121, v0, v119
	v_div_scale_f32 v121, s1, v117, v120, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v119, -v129, v137, v134
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v134, v10, v122
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v119, v119, v128, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v110, v134, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v118, v119, v118, v126
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v119, v10, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v112, v119, v112
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v119, v13, v124
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v134, 0xbfb8aa3b, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v108, v119, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v127, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v132, v15, v123
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v126, v13, v123
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v127, v127
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v113, v132, v113 :: v_dual_mul_f32 v104, v126, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v113, v113, v118
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v127, v127, v136
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v136, null, v120, v120, v117
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v127, 1.0, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v138, v136
	v_div_scale_f32 v131, null, v127, v127, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v125, v131
	v_fma_f32 v133, -v136, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v138, v133, v138
	v_fma_f32 v129, -v131, v125, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v128, v121, v138
	v_fma_f32 v132, -v136, v128, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v132, v138
	v_fma_f32 v119, -v136, v128, v121
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v121, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v119, v119, v138, v128
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v117, v119, v120, v117
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v121, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v108, v108, v117 :: v_dual_fmac_f32 v121, 0xbfb8aa3b, v110
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v117, v121
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v121, v8, v122
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v135, v15, v124
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v107, v121, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v125, v129, v125
	v_div_scale_f32 v129, s0, v116, v127, v116
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v108, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v133, v129, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v131, v133, v129
	v_fmac_f32_e32 v133, v132, v125
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v132, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v128, -v131, v133, v129
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v132, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v131, v10, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v125, v128, v125, v133
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v126, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v101, v131, v101
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v116, v125, v127, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v116, v104, v116
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v104, v126, v118
	v_mul_f32_e32 v126, 0xbfb8aa3b, v107
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v118.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v118.l, v116.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v119, 1.0, v104 :: v_dual_and_b32 v104, 1, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v114, v135, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v118, 1, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v120, null, v119, v119, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v114, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v126
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v104, v108, v104, 0x7fff
	v_add3_u32 v118, v116, v118, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v114, v117, v114
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v117, v8, v130
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v126, 0, 0x42800000, s1
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v114, 1.0, v114 :: v_dual_mul_f32 v109, v117, v109
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v117, v120
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v107
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v116, v116
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v122, null, v114, v114, v110
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v121, 0xbfb8aa3b, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v128, s2, v110, v114, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v125, v122
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v104.l, 0x7fff, v118.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v108, -v120, v117, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v121
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v116.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v117, v108, v117
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v121, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v108, -v122, v125, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v121, 0xbfb8aa3b, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v125, v108, v125
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v108, v126
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v108, v108, v130
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v130, v10, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v121, v121, v126
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v126, v128, v125
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v108, 1.0, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v102, v130, v102
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v127, s0, v112, v119, v112
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v121, 1.0, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v133, -v122, v126, v128
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v129, v127, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v126, v133, v125
	v_fma_f32 v132, -v120, v129, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v122, -v122, v126, v128
	v_fmac_f32_e32 v129, v132, v117
	v_div_scale_f32 v132, null, v121, v121, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v120, -v120, v129, v127
	v_rcp_f32_e32 v130, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v117, v120, v117, v129
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v120, v122, v125, v126
	v_div_fixup_f32 v112, v117, v119, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v122, -v132, v130, 1.0
	v_div_fixup_f32 v110, v120, v114, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v102, v102, v112
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v130, v122, v130
	v_div_scale_f32 v114, vcc_lo, v109, v121, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v101, v101, v110
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v102.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v110, v114, v130
	v_div_scale_f32 v133, null, v108, v108, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v122, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v119, -v132, v110, v114
	v_rcp_f32_e32 v127, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v118, v102, v122, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v110, v119, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v114, -v132, v110, v114
	v_fma_f32 v117, -v133, v127, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v110, v114, v130, v110
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v114, 16, v115
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v109, v110, v121, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v127, v117, v127
	v_div_scale_f32 v117, s0, v107, v108, v107
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v110, v15, v114
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v112, v117, v127
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v103, v110, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v120, -v133, v112, v117
	v_fmac_f32_e32 v112, v120, v127
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v120, v8, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v117, -v133, v112, v117
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v100, v120, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v100, v100, v109 :: v_dual_lshlrev_b32 v109, 16, v111
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v112, v117, v127, v112
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v100.h
	v_cmp_o_f32_e64 s1, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v107, v112, v108, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v108.h, v7.h
	v_and_b32_e32 v110, 1, v7
	v_mov_b16_e32 v7.l, v0.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v111, v15, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v110, v100, v110, 0x7fff
	v_mov_b16_e32 v110.l, v113.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v100, v111, v65 :: v_dual_mul_f32 v119, v8, v123
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v116.l, v101.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v65.h, 0x7fff, v110.h, s1
	v_mov_b16_e32 v110.h, v7.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v99, v119, v99 :: v_dual_and_b32 v116, 1, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v107, v99, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v102, v101, v116, 0x7fff
	v_cndmask_b16 v99.h, 0x7fff, v118.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v101, 0xbfb8aa3b, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v108.l, v107.h
	v_cndmask_b16 v99.l, 0x7fff, v102.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v101
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v101, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v102, v107, v108, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v108, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v107, v107
	v_and_b32_e32 v107, 1, v110
	v_and_b32_e32 v110, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.l, 0x7fff, v102.h, s0
	v_add3_u32 v102, v113, v107, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v107, v0, v110, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v108, 0, 0x42800000, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v110, v13, v114
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v108, 0xbfb8aa3b, v100
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v110, v110, v98 :: v_dual_mul_f32 v113, v13, v109
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v98.h, 0x7fff, v107.h, s0
	v_cndmask_b16 v98.l, 0x7fff, v102.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v108, v108
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v97, v113, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v0, v108, v0
	v_mul_f32_e32 v108, 0xbfb8aa3b, v110
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v108
	v_mul_f32_e32 v108, 0xbfb8aa3b, v97
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v113, null, v0, v0, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v102, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v108, v113
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v110
	v_exp_f32_e32 v101, v101
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v102, v102
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v118, -v113, v108, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v101, v101, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v108, v118, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v102, v102, v116
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v101, 1.0, v101 :: v_dual_add_f32 v102, 1.0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v111, null, v101, v101, v103
	v_rcp_f32_e32 v112, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v107, -v111, v112, 1.0
	v_fmac_f32_e32 v112, v107, v112
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v107, 0, 0x42800000, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v115, s1, v103, v101, v103
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v118, s0, v100, v0, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v97
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v117, v115, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v107, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v119, -v111, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v117, v119, v112
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v107, v107, v120
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v120, null, v102, v102, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v111, -v111, v117, v115
	v_rcp_f32_e32 v122, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v111, v111, v112, v117
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v101, v111, v101, v103
	v_div_scale_f32 v111, s1, v110, v102, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v117, -v120, v122, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v107, 1.0, v107 :: v_dual_fmac_f32 v122, v117, v122
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v121, v118, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v115, null, v107, v107, v97
	v_fma_f32 v123, -v113, v121, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v112, v115
	v_fmac_f32_e32 v121, v123, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v103, -v113, v121, v118
	v_fma_f32 v113, -v115, v112, 1.0
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v119, v15, v106 :: v_dual_mul_f32 v118, v10, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v103, v103, v108, v121
	v_mul_f32_e32 v108, v111, v122
	v_fmac_f32_e32 v112, v113, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v96, v119, v96
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v116, v15, v105
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v103, v0, v100
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v100, v10, v114
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v113, s0, v97, v107, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v63, v100, v63 :: v_dual_mul_f32 v100, v13, v106
	v_dual_mul_f32 v61, v118, v61 :: v_dual_mul_f32 v94, v100, v94
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v95, v116, v95
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v116, -v120, v108, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v103, v13, v105 :: v_dual_fmac_f32 v108, v116, v122
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v93, v103, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v120, v108, v111
	v_div_fmas_f32 v100, v100, v122, v108
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v100, v100, v102, v110
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v94, v94, v100
	v_mul_f32_e32 v0, v95, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v117, v113, v112 :: v_dual_mul_f32 v118, 0xbfb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v94.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v111, 0xbfb8aa3b, v61
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v116, -v115, v117, v113
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v118
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v94, v94
	v_and_b32_e32 v102, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v111
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v117, v116, v112
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v116, 0, 0x42800000, s2
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v102, v94, v102, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v111, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v116, 0xbfb8aa3b, v63
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v108, -v115, v117, v113
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v111, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v103, v116
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v108, v108, v112, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v100, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v97, v108, v107, v97
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v107, v8, v109
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v95, v103, v95
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v93, v93, v97
	v_mul_f32_e32 v96, v96, v101
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v97, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v101.h, v7.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v95, 1.0, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v97, v100, v97
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v100, v8, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v103, null, v95, v95, v63
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v56, v100, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v100, v103
	v_fma_f32 v94, -v103, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v97, 1.0, v97 :: v_dual_fmac_f32 v100, v94, v100
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v108, null, v97, v97, v61
	v_div_scale_f32 v112, s2, v61, v97, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v109, v108
	v_fma_f32 v94, -v108, v109, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v109, v94, v109
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v107, v107, v54 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v101.l, v93.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v110, 0xbfb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v101, 1, v101
	v_cndmask_b16 v54.h, 0x7fff, v102.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v110
	v_cndmask_b32_e64 v111, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v101, v93, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v110, 0, 0x42800000, s1
	v_fmac_f32_e32 v111, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v93, v93
	v_mov_b16_e32 v93.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v110, 0xbfb8aa3b, v107
	v_exp_f32_e32 v102, v111
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v111, s0, v63, v95, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.l, 0x7fff, v101.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v94, v110
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v101, v8, v105
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v102, v102, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v89, v101, v89
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v94, v94, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v113, v111, v100 :: v_dual_add_f32 v102, 1.0, v102
	v_mul_f32_e32 v110, v112, v109
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v114, v10, v106
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v94, 1.0, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v116, -v103, v113, v111
	v_fma_f32 v117, -v108, v110, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v92, v114, v92
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v113, v116, v100
	v_div_scale_f32 v116, null, v102, v102, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v110, v117, v109
	v_div_scale_f32 v117, null, v94, v94, v107
	v_fma_f32 v103, -v103, v113, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v114, v116
	v_fma_f32 v108, -v108, v110, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v111, v117
	v_div_fmas_f32 v100, v103, v100, v113
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v103, v108, v109, v110
	v_div_fixup_f32 v63, v100, v95, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v108, -v116, v114, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v115, v10, v105
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v95, -v117, v111, 1.0
	v_div_fixup_f32 v61, v103, v97, v61
	v_div_scale_f32 v97, vcc_lo, v56, v102, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v114, v108, v114 :: v_dual_fmac_f32 v111, v95, v111
	v_div_scale_f32 v95, s0, v107, v94, v107
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v91, v115, v91
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v63, v92, v63
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v92, v95, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v117, v92, v95
	v_dual_fmac_f32 v92, v103, v111 :: v_dual_mul_f32 v103, v8, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v95, -v117, v92, v95
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v90, v103, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v63.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v61, v91, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v91, v97, v114 :: v_dual_and_b32 v108, 1, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v93.l, v61.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v116, v91, v97
	v_fmac_f32_e32 v91, v100, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v100, v63, v108, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v97, -v116, v91, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v91, v97, v114, v91
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v92, v95, v111, v92
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v56, v91, v102, v56
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v91, v15, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v93, 1, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v92, v92, v94, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v95, v13, v62 :: v_dual_mul_f32 v56, v90, v56
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v90, v91, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v61, v93, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v100.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v89, v89, v92
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v90
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v56.h
	v_mov_b16_e32 v91.h, v7.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v93, v15, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v91.l, v89.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v92, 1, v7
	v_cmp_o_f32_e64 s1, v56, v56
	v_cndmask_b16 v48.l, 0x7fff, v63.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v58, v95, v58 :: v_dual_and_b32 v91, 1, v91
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v92, v56, v92, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v56, v93, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v89, v91, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.h, 0x7fff, v92.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v91, 0xbfb8aa3b, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v96.h
	v_mov_b16_e32 v92.l, v0.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v61, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v92.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v89, 1, v92
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v92, 1, v7
	v_cndmask_b16 v47.l, 0x7fff, v63.h, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v61, v61, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v0, v89, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v89, v96, v92, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v92, v13, v64 :: v_dual_add_f32 v61, 1.0, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v91, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v92, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v93, null, v61, v61, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v96, v96
	v_cndmask_b16 v0.l, 0x7fff, v63.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v96, s1, v90, v61, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v93
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v91, v91, v94
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.h, 0x7fff, v89.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v63, 1.0, v91
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v91, -v93, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v91, v92
	v_mul_f32_e32 v100, v96, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v93, v100, v96
	v_fmac_f32_e32 v100, v102, v92
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v94, 0xbfb8aa3b, v59
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v102, v15, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v93, -v93, v100, v96
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_mul_f32_e32 v94, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v88, v102, v88
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v95, null, v63, v63, v56
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v94
	v_cndmask_b32_e64 v97, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v94, v95
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v91, 0, 0x42800000, s0
	v_cndmask_b32_e64 v103, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v92, v93, v92, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v89, v89
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v101, -v95, v94, 1.0
	v_div_fixup_f32 v61, v92, v61, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v94, v101, v94
	v_div_scale_f32 v101, s0, v56, v63, v56
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v89, v89, v97
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v105, v101, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v107, -v95, v105, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v92, s1, v59, v89, v59
	v_fmac_f32_e32 v105, v107, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v95, v105, v101
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v101, v10, v62
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v97, v15, v52 :: v_dual_mul_f32 v62, v8, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v90, v90, v94, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v50, v101, v50
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v87, v97, v87
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v62, v62, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v56, v90, v63, v56
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v90, v13, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v85, v90, v85
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v10, v64
	v_dual_mul_f32 v64, v8, v64 :: v_dual_mul_f32 v51, v63, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v91, v91, v103
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v103, null, v89, v89, v59
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v42, v64, v42 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v106, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v96, null, v91, v91, v58
	v_rcp_f32_e32 v93, v96
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v103, v106, 1.0
	v_fmac_f32_e32 v106, v100, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v95, -v96, v93, 1.0
	v_dual_mul_f32 v94, v92, v106 :: v_dual_mul_f32 v63, v13, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v97, -v103, v94, v92
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v63, v63, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v94, v97, v106
	v_fma_f32 v86, -v103, v94, v92
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v92, 0xbfb8aa3b, v50
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v56, v87, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v86, v86, v106, v94
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v59, v86, v89, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v92, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s0, v58, v91, v58
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v92, 0xbfb8aa3b, v50 :: v_dual_mul_f32 v59, v63, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v100, v95, v93
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v63, v92
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v59.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v97, -v96, v100, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v59, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v100, v97, v93
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v97, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v94, -v96, v100, v95
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v96, v10, v52
	v_mul_f32_e32 v52, v8, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v93, v94, v93, v100
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v83, v96, v83
	v_mul_f32_e32 v52, v52, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v93, v91, v58
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v97, 0xbfb8aa3b, v51
	v_mul_f32_e32 v91, 0xbfb8aa3b, v62
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v58, v85, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v42
	v_exp_f32_e32 v90, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v87.l, v58.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v85, v90, v86
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v63, v63, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v91, 0, 0x42800000, s1
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v86, null, v85, v85, v51
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v64, v86
	v_div_scale_f32 v89, null, v63, v63, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v90, v89
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v61, v88, v61 :: v_dual_and_b32 v88, 1, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v88, v59, v88, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v86, v64, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v88.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v64, v59, v64
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v88, v92
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v92, s0, v51, v85, v51
	v_fma_f32 v59, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v94, v92, v64
	v_fmac_f32_e32 v90, v59, v90
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v59, v91
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v97, -v86, v94, v92
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v88, v88, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v94, v97, v64
	v_div_scale_f32 v93, s2, v50, v63, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v59, v59, v95
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v95, v10, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v86, -v86, v94, v92
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v53, v8, v53
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v88, 1.0, v88 :: v_dual_and_b32 v87, 1, v87
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v84, v95, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v64, v86, v64, v94
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v53, v53, v82
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v97, null, v88, v88, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v51, v64, v85, v51
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v87, v58, v87, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v95, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v51, v84, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v84.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v91, v93, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v87.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v89, v91, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v91, v100, v90
	v_div_scale_f32 v100, null, v59, v59, v62
	v_fma_f32 v89, -v89, v91, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v100
	v_div_fmas_f32 v86, v89, v90, v91
	v_fma_f32 v89, -v97, v95, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v86, v63, v50
	v_fma_f32 v64, -v100, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v63, vcc_lo, v42, v88, v42
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v50, v83, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v92, v64, v92
	v_div_scale_f32 v64, s0, v62, v59, v62
	v_mul_f32_e32 v83, v63, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v84.l, v50.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v58, v64, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v97, v83, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v84, 1, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v86, -v100, v58, v64
	v_dual_fmac_f32 v83, v85, v95 :: v_dual_fmac_f32 v58, v86, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v97, v83, v63
	v_fma_f32 v64, -v100, v58, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v63, v95, v83
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v58, v64, v92, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v42, v63, v88, v42
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v15, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v58, v59, v62
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v62, v15, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v42, v53, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v51.h
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v52, v52, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.h, v7.h
	v_cmp_o_f32_e64 s1, v42, v42
	v_and_b32_e32 v89, 1, v7
	v_mov_b16_e32 v7.l, v42.h
	v_mov_b16_e32 v58.l, v52.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v85, v51, v89, 0x7fff
	v_and_b32_e32 v59, 1, v7
	v_add3_u32 v51, v50, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v7.l, v61.h
	v_add3_u32 v59, v42, v59, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v42, v62, v27 :: v_dual_mul_f32 v53, v63, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.h, 0x7fff, v85.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v27.h, 0x7fff, v59.h, s1
	v_mov_b16_e32 v59.l, v56.h
	v_mov_b16_e32 v59.h, v7.h
	v_cndmask_b16 v28.l, 0x7fff, v51.h, vcc_lo
	v_add3_u32 v51, v52, v58, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v42
	v_mul_f32_e32 v50, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v52, v52
	v_and_b32_e32 v52, 1, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v53
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v13, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v59, 1, v7
	v_cndmask_b16 v27.l, 0x7fff, v51.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v56, v52, 0x7fff
	v_cmp_o_f32_e64 s0, v61, v61
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v40, v63, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v61, v59, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v59, v13, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v50, v50, v62
	v_ldexp_f32 v58, v58, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v62, null, v50, v50, v53
	v_div_scale_f32 v64, s1, v53, v50, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v62
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v59, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v51.h, vcc_lo
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v51, 1.0, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v52.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v62, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v56, v58, v56 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v59
	v_mul_f32_e32 v82, v64, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_mul_f32_e32 v61, 0xbfb8aa3b, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v63, null, v51, v51, v42
	v_fma_f32 v84, -v62, v82, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v61, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v82, v84, v56
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v58, 0, 0x42800000, s0
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v62, -v62, v82, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v52, v52
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v83, -v63, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v56, v62, v56, v82
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v50, v56, v50, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v52, v52, v81
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v81, v15, v30 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v58, v58, v85
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v61, v83, v61
	v_div_scale_f32 v83, s0, v42, v51, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v85, null, v52, v52, v59
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v86, v83, v61 :: v_dual_mul_f32 v79, v81, v79
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v56, s1, v59, v52, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v64, null, v58, v58, v40
	v_fma_f32 v88, -v63, v86, v83
	s_mov_b32 vcc_lo, s0
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v84, v15, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v62, v64
	v_fma_f32 v82, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v86, v88, v61 :: v_dual_fmac_f32 v87, v82, v87
	v_fma_f32 v53, -v63, v86, v83
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v83, v10, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v63, -v64, v62, 1.0
	v_div_fmas_f32 v53, v53, v61, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v61, v56, v87 :: v_dual_fmac_f32 v62, v63, v62
	v_div_scale_f32 v63, s0, v40, v58, v40
	v_div_fixup_f32 v42, v53, v51, v42
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v51, v10, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v81, -v85, v61, v56
	v_mul_f32_e32 v82, v63, v62
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v80, v84, v80 :: v_dual_mul_f32 v53, v13, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v38, v83, v38 :: v_dual_fmac_f32 v61, v81, v87
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v81, -v64, v82, v63
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v39, v51, v39
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v51, v13, v31
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v53, v53, v77 :: v_dual_mul_f32 v42, v79, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v82, v81, v62 :: v_dual_mul_f32 v83, 0xbfb8aa3b, v39
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v51, v51, v78
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v78, 0xbfb8aa3b, v38
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v56, -v85, v61, v56
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v83
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v50, v80, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v78
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v56, v56, v87, v61
	v_fma_f32 v61, -v64, v82, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v81, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v52, v56, v52, v59
	v_div_fmas_f32 v61, v61, v62, v82
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v39
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v46, v8, v46
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v80, v10, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v40, v61, v58, v40
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v62, v81
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v8, v30
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v46, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v40, v53, v40
	v_mul_f32_e32 v51, v51, v52
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v30, v73
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v52, v62, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.l, v40.h
	v_mov_b16_e32 v56.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v51.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v51, v51
	v_and_b32_e32 v56, 1, v56
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v58, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v56, v40, v56, 0x7fff
	v_add3_u32 v61, v51, v61, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v53, v58, v53
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, null, v52, v52, v39
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v46, v58
	v_div_scale_f32 v59, null, v53, v53, v38
	v_div_scale_f32 v77, s3, v38, v53, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v62, v59
	v_fma_f32 v64, -v58, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v64, v46
	v_div_scale_f32 v64, s2, v39, v52, v39
	v_fma_f32 v51, -v59, v62, 1.0
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v45, v8, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v78, v64, v46
	v_dual_fmac_f32 v62, v51, v62 :: v_dual_mul_f32 v45, v45, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v58, v78, v64
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v63, 0xbfb8aa3b, v45 :: v_dual_fmac_f32 v78, v81, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, s0
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v45
	v_exp_f32_e32 v51, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v51, v51, v79
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v79, v10, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v22
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v31, v8, v31 :: v_dual_mul_f32 v76, v79, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v31, v31, v74
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v22
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v63, v77, v62 :: v_dual_add_f32 v82, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v59, v63, v77
	v_div_scale_f32 v81, null, v82, v82, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v21, v62
	v_fma_f32 v21, -v58, v78, v64
	v_rcp_f32_e32 v79, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v59, v63, v77
	v_div_fmas_f32 v21, v21, v46, v78
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v46, v58, v62, v63
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v62, v80, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v39, v21, v52, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v81, v79, 1.0
	v_div_fixup_f32 v38, v46, v53, v38
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v46, vcc_lo, v22, v82, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v58, v79
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v38, v62, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v83, null, v51, v51, v45
	v_div_scale_f32 v52, s0, v45, v51, v45
	v_mul_f32_e32 v53, v46, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v59, v83
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v39, v76, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v38.h
	v_mov_b16_e32 v7.l, v39.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v83, v59, 1.0
	v_fmac_f32_e32 v59, v21, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v61.h, s1
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v40, -v81, v53, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v58, v52, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v56.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v53, v40, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v62, -v83, v58, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v46, -v81, v53, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v62, v59
	v_div_fmas_f32 v46, v46, v79, v53
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v83, v58, v52
	v_div_fixup_f32 v22, v46, v82, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v52, v52, v59, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v22, v31, v22
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v31, v15, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v45, v52, v51, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v39, v40, 0x7fff
	v_add3_u32 v39, v38, v56, 0x7fff
	v_mov_b16_e32 v7.l, v22.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v31, v12
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v30, v30, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.h, v7.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v46, 0xbfb8aa3b, v12 :: v_dual_and_b32 v45, 1, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v38, v15, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v22, v45, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v22, v22
	v_mov_b16_e32 v7.l, v50.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v38, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v39.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v38.h, 0x7fff, v45.h, s1
	v_cmp_o_f32_e64 s1, v30, v30
	v_mov_b16_e32 v39.l, v42.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v30, v31, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v50, v50
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v45, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v22.h, s1
	v_and_b32_e32 v22, 1, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v30, v45, v30
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v45, v13, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v50, v22, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v50, v13, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v36, v50, v36 :: v_dual_mul_f32 v37, v45, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v45, null, v30, v30, v12
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v51, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v31, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v52, -v45, v51, 1.0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v52, v51 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v61, v15, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v31, v31, v46
	v_mul_f32_e32 v46, 0xbfb8aa3b, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v42, v39, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v42, 0xbfb8aa3b, v36
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v61, v61, v72
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v39.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v52, vcc_lo, v12, v30, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v50, null, v31, v31, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v46, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v39, v46, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v56, -v50, v53, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v36
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v46, v52, v51
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v53, v56, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v42, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v56, s0, v11, v31, v11
	v_fma_f32 v59, -v45, v46, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v15, v15, v16 :: v_dual_mul_f32 v62, v56, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v46, v59, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v15, v71
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v42, v42, v58
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, null, v39, v39, v37
	v_fma_f32 v64, -v50, v62, v56
	v_fma_f32 v45, -v45, v46, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v63, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v64, v53
	v_div_fmas_f32 v45, v45, v51, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v59, null, v42, v42, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v46, -v50, v62, v56
	v_div_scale_f32 v50, s1, v37, v39, v37
	v_rcp_f32_e32 v52, v59
	v_fma_f32 v64, -v58, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v46, v46, v53, v62
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v56, v10, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v12, v45, v30, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v26, v8, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v11, v46, v31, v11
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v30, v56, v35 :: v_dual_mul_f32 v35, v13, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v51, -v59, v52, 1.0
	v_fmac_f32_e32 v63, v64, v63
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v11, v15, v11 :: v_dual_mul_f32 v12, v61, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v19, v26, v19 :: v_dual_fmac_f32 v52, v51, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v53, v50, v63
	v_div_scale_f32 v51, s0, v36, v42, v36
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v13, v13, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v58, v53, v50
	v_mul_f32_e32 v46, v51, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v31, v63
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v59, v46, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v58, v53, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v45, v45, v63, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v46, v15, v52 :: v_dual_mul_f32 v15, v10, v25
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v37, v45, v39, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v50, -v59, v46, v51
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v15, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v34, v50, v52, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v34, v34, v42, v36
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v35, v35, v70
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v31, v31, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v36, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v13, v13, v69
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v35, v36
	v_mul_f32_e32 v36, 0xbfb8aa3b, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v26, v35, v26
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v8, v25
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v13, v37
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v19
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_mul_f32 v18, v25, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v13.h
	v_add3_u32 v39, v34, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v36, v36
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v31, v31, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v45, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v42, null, v26, v26, v15
	v_rcp_f32_e32 v35, v25
	v_div_scale_f32 v53, s1, v15, v26, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v13, v45, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v36, v36, v51
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v50, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v25, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_div_scale_f32 v46, vcc_lo, v30, v31, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v51, -v42, v50, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v50, v51, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v13, v13
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v36
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v61, v53, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s0, v34, v34
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v34, v10, v16
	v_mul_f32_e32 v16, v8, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v36, v46, v35
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v8, v8, v20
	v_mul_f32_e32 v10, v10, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v39.h, s0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v16, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v25, v36, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v10, v10, v68
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v8, v8, v9 :: v_dual_mov_b32 v39, 0x7632
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v36, v58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v37, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v42, v61, v53
	v_fma_f32 v25, -v25, v36, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v25, v25, v35, v36
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v37, v37, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v25, v25, v31, v30
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v10, v25
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v52, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v10.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v59, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v46, -v52, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v46, v59
	v_fmac_f32_e32 v61, v58, v50
	v_div_scale_f32 v46, s3, v18, v37, v18
	v_fma_f32 v35, -v42, v61, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v46, v59
	v_div_scale_f32 v51, null, v13, v13, v19
	v_div_scale_f32 v58, s2, v19, v13, v19
	v_fma_f32 v53, -v52, v42, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v56, v51
	v_fmac_f32_e32 v42, v53, v59
	v_div_fmas_f32 v35, v35, v50, v61
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v62, -v51, v56, 1.0
	v_div_fixup_f32 v15, v35, v26, v15
	v_fma_f32 v26, -v52, v42, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v62, v56
	v_mul_f32_e32 v36, v58, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v51, v36, v58
	v_fmac_f32_e32 v36, v50, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v51, v36, v58
	v_div_fmas_f32 v25, v25, v56, v36
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v26, v26, v59, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v25, v13, v19
	v_div_fixup_f32 v18, v26, v37, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v8, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v7.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v16, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v18, v10, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v9.l, v13.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v34, v34, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 1, v9
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v15, v34, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v13, v9, 0x7fff
	v_mov_b16_e32 v30.l, v15.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v30
	v_add3_u32 v10, v15, v16, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v7.h
	v_and_b32_e32 v18, 1, v7
	v_mov_b16_e32 v7.l, v12.h
	v_cndmask_b16 v16.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_and_b32_e32 v10, 1, v15
	v_add3_u32 v15, v8, v18, 0x7fff
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v8, v11, v10, 0x7fff
	scratch_load_b32 v10, off, off offset:124 ; 4-byte Folded Reload
	v_add3_u32 v7, v12, v7, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s0
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	v_cndmask_b32_e32 v8, v49, v14, vcc_lo
	v_cndmask_b32_e32 v10, v104, v29, vcc_lo
	v_cndmask_b32_e32 v12, v29, v104, vcc_lo
	v_cndmask_b32_e32 v20, v99, v32, vcc_lo
	v_cndmask_b32_e32 v29, v16, v28, vcc_lo
	v_cndmask_b32_e32 v16, v28, v16, vcc_lo
	v_dual_cndmask_b32 v28, v57, v23 :: v_dual_cndmask_b32 v37, v22, v0
	v_cndmask_b32_e32 v0, v0, v22, vcc_lo
	v_dual_mov_b32 v22, 0x5410 :: v_dual_cndmask_b32 v9, v14, v49
	v_dual_cndmask_b32 v14, v54, v21 :: v_dual_cndmask_b32 v35, v60, v24
	v_dual_cndmask_b32 v24, v24, v60 :: v_dual_cndmask_b32 v39, 0x3276, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v22, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v13, v21, v54, vcc_lo
	v_cndmask_b32_e32 v15, v45, v33, vcc_lo
	v_cndmask_b32_e32 v18, v33, v45, vcc_lo
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v22, v22, 8, v22
	v_dual_cndmask_b32 v36, v98, v44 :: v_dual_cndmask_b32 v19, v55, v17
	v_cndmask_b32_e32 v17, v17, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 0x760076, v39
	v_dual_cndmask_b32 v21, v32, v99 :: v_dual_and_b32 v22, 0x540054, v22
	v_cndmask_b32_e32 v25, v40, v48, vcc_lo
	v_dual_cndmask_b32 v26, v48, v40 :: v_dual_cndmask_b32 v31, v43, v65
	v_dual_cndmask_b32 v23, v23, v57 :: v_dual_cndmask_b32 v32, v38, v47
	v_cndmask_b32_e32 v33, v47, v38, vcc_lo
	v_cndmask_b32_e32 v34, v11, v27, vcc_lo
	v_cndmask_b32_e32 v11, v27, v11, vcc_lo
	v_dual_cndmask_b32 v27, v44, v98 :: v_dual_cndmask_b32 v38, v7, v41
	v_cndmask_b32_e32 v7, v41, v7, vcc_lo
	v_permlanex16_b32 v40, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v16, v22, 4, v22
	v_lshl_or_b32 v22, v39, 4, v39
	v_cndmask_b32_e32 v30, v65, v43, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v16
	v_and_b32_e32 v44, 0x7060706, v22
	v_permlanex16_b32 v45, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v9, v8, v43
	v_perm_b32 v8, v9, v8, v44
	v_perm_b32 v9, v12, v10, v43
	v_perm_b32 v10, v12, v10, v44
	v_perm_b32 v11, v14, v13, v43
	v_perm_b32 v12, v14, v13, v44
	v_perm_b32 v13, v18, v15, v43
	v_perm_b32 v14, v18, v15, v44
	v_perm_b32 v15, v17, v19, v43
	v_perm_b32 v16, v17, v19, v44
	v_perm_b32 v17, v21, v20, v43
	v_perm_b32 v18, v21, v20, v44
	v_perm_b32 v19, v26, v25, v43
	v_perm_b32 v20, v26, v25, v44
	v_perm_b32 v21, v40, v29, v43
	v_perm_b32 v22, v40, v29, v44
	v_perm_b32 v23, v41, v28, v43
	v_perm_b32 v24, v41, v28, v44
	v_perm_b32 v25, v31, v30, v43
	v_perm_b32 v26, v31, v30, v44
	v_perm_b32 v27, v33, v32, v43
	v_perm_b32 v28, v33, v32, v44
	v_perm_b32 v29, v39, v34, v43
	v_perm_b32 v30, v39, v34, v44
	v_perm_b32 v31, v42, v35, v43
	v_perm_b32 v32, v42, v35, v44
	v_perm_b32 v33, v45, v36, v43
	v_perm_b32 v34, v45, v36, v44
	v_perm_b32 v35, v0, v37, v43
	v_perm_b32 v36, v0, v37, v44
	v_add_lshl_u32 v0, v4, v1, 1
	v_add_lshl_u32 v1, v3, v1, 1
	v_add_lshl_u32 v39, v4, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v0, s[8:11], 0 offen
	buffer_store_b128 v[11:14], v1, s[8:11], 0 offen
	buffer_store_b128 v[15:18], v39, s[8:11], 0 offen
	v_add_lshl_u32 v0, v3, v6, 1
	v_add_lshl_u32 v1, v4, v5, 1
	v_add_lshl_u32 v5, v3, v5, 1
	v_add_lshl_u32 v4, v4, v2, 1
	v_perm_b32 v37, v46, v38, v43
	v_perm_b32 v38, v46, v38, v44
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[8:11], 0 offen
	buffer_store_b128 v[23:26], v1, s[8:11], 0 offen
	buffer_store_b128 v[27:30], v5, s[8:11], 0 offen
	buffer_store_b128 v[31:34], v4, s[8:11], 0 offen
	buffer_store_b128 v[35:38], v2, s[8:11], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 408
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
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 408
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36012
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 408
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
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
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 408
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 146
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
