	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s50, s[0:1], 0x60
	s_load_b64 s[38:39], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v18, 7, v0
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x40
	s_load_b64 s[52:53], s[0:1], 0x0
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v17, 3, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v45, 15, v0
	s_mov_b32 s40, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v7, 0x70, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v6, v6, v7
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s50
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s50
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s38, v17
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v46, 0, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[41:42], null, s38, v1, v[17:18]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s53, s53, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s50
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s8, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s8, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s37, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s9, s4, s38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s9, v41, 1
	s_load_b32 s9, s[0:1], 0x84
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s50, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s10, s4, s50
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[2:5], v2, s[52:55], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_add_i32 s12, s6, 1
	s_sub_i32 s4, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 810 48                        ; attention.py:810:48
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s9, s8
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s10
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s4, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s10
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s4, s4, 0x800
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s5, s37, s2
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s4, s4, 63
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s4, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s51, s5, 6
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s51, s2
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s60, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s51, s60
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v19, 0x78, v0
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v20, 4, v18
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s8, v45
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v17
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v23, 1, v19
	v_lshrrev_b32_e32 v21, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v49, 0x800, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v48, s9, v2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 1, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[42:43], null, s39, v23, v[17:18]
	v_mov_b32_e32 v43, 0xff800000
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v22, v45, 7, v20
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v54, 0x800, v23
	v_and_b32_e32 v23, 0x60, v0
	v_xor_b32_e32 v19, v20, v19
	v_or_b32_e32 v63, 62, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v24, 16, v22
	v_xor_b32_e32 v25, 32, v22
	v_xor_b32_e32 v26, 48, v22
	v_xor_b32_e32 v2, 64, v22
	v_xor_b32_e32 v3, 0x70, v22
	v_xor_b32_e32 v4, 0x60, v22
	v_xor_b32_e32 v5, 0x50, v22
	v_add_nc_u32_e32 v58, 0, v22
	v_and_b32_e32 v22, 16, v0
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s62, s2, 0x3fb8aa3b
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v51, 0, v4
	v_add_nc_u32_e32 v57, 0, v24
	v_mov_b32_e32 v24, 0x5410
	v_cmp_eq_u32_e64 s2, 0, v22
	v_dual_mov_b32 v22, 0x7632 :: v_dual_add_nc_u32 v53, 0, v2
	v_lshl_or_b32 v20, v23, 6, v20
	v_lshl_or_b32 v59, v18, 10, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0x1054, v24, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v47, v0, 4, 1
	v_cndmask_b32_e64 v22, 0x3276, v22, s2
	s_and_b32 s5, s5, 0xffff
	v_xor_b32_e32 v19, 0x90, v59
	v_lshl_or_b32 v24, v24, 8, v24
	v_xor_b32_e32 v70, 0x3f0, v59
	v_lshl_or_b32 v22, v22, 8, v22
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s61, s3, 11
	v_add_nc_u32_e32 v64, 0, v19
	v_and_b32_e32 v17, 0x540054, v24
	v_bfe_i32 v24, v0, 3, 1
	v_and_b32_e32 v22, 0x760076, v22
	v_add_nc_u32_e32 v70, 0, v70
	s_lshl_b32 s63, s38, 4
	v_lshl_or_b32 v17, v17, 4, v17
	v_and_or_b32 v23, 0x410, v24, v23
	v_lshl_or_b32 v22, v22, 4, v22
	v_xor_b32_e32 v24, 0x360, v59
	s_lshl_b32 s64, s38, 5
	v_and_b32_e32 v60, 0x5040504, v17
	v_xor_b32_e32 v17, v23, v20
	v_xor_b32_e32 v20, 0x120, v59
	v_xor_b32_e32 v23, 0x2d0, v59
	v_add_nc_u32_e32 v69, 0, v24
	s_mul_i32 s65, s38, 48
	v_lshl_or_b32 v62, v18, 7, v17
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v50, 0, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v55, 0, v26
	v_and_b32_e32 v61, 0x7060706, v22
	v_xor_b32_e32 v22, 0x1b0, v59
	v_add_nc_u32_e32 v56, 0, v25
	v_dual_mov_b32 v21, v17 :: v_dual_add_nc_u32 v52, 0, v5
	v_add_nc_u32_e32 v65, 0, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v66, 0, v22
	v_dual_mov_b32 v19, v17 :: v_dual_add_nc_u32 v68, 0, v23
	ds_load_b128 v[5:8], v50
	ds_load_b128 v[1:4], v51
	ds_load_b128 v[13:16], v52
	ds_load_b128 v[9:12], v53
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	ds_load_b128 v[29:32], v55
	ds_load_b128 v[25:28], v56
	ds_load_b128 v[37:40], v57
	ds_load_b128 v[33:36], v58
	v_xor_b32_e32 v18, 0x240, v59
	v_xor_b32_e32 v71, 16, v62
	v_xor_b32_e32 v72, 32, v62
	v_xor_b32_e32 v73, 48, v62
	v_xor_b32_e32 v74, 64, v62
	v_xor_b32_e32 v75, 0x50, v62
	v_xor_b32_e32 v76, 0x60, v62
	v_xor_b32_e32 v77, 0x70, v62
	v_add_nc_u32_e32 v67, 0, v18
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v74, 0, v74
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v76, 0, v76
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v77, 0, v77
	v_mov_b32_e32 v24, v17
	v_mov_b32_e32 v78, v17
	s_lshl_b32 s66, s39, 1
	s_mul_i32 s67, s39, 3
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s68, 0x76543210
	s_mov_b32 s56, s6
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s4, s51, s61
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s2, s51, v49
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[79:80], null, s4, s38, v[41:42]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v118, s47 :: v_dual_mov_b32 v115, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s2, vcc_lo, s2
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v116, s45 :: v_dual_mov_b32 v113, s42
	v_dual_mov_b32 v114, s43 :: v_dual_mov_b32 v111, s40
	v_dual_mov_b32 v117, s46 :: v_dual_lshlrev_b32 v80, 1, v79
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v81, v79, s63, 1
	v_add_lshl_u32 v82, v79, s64, 1
	v_add_lshl_u32 v79, v79, s65, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v112, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v83, 0x80000000, v81, s2
	v_cndmask_b32_e64 v87, 0x80000000, v82, s2
	v_cndmask_b32_e64 v91, 0x80000000, v79, s2
	s_clause 0x3
	buffer_load_b128 v[79:82], v80, s[52:55], 0 offen
	buffer_load_b128 v[83:86], v83, s[52:55], 0 offen
	buffer_load_b128 v[87:90], v87, s[52:55], 0 offen
	buffer_load_b128 v[91:94], v91, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s51, v54
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v46, v[79:82]
	s_waitcnt vmcnt(2)
	ds_store_b128 v46, v[83:86] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[87:90] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[91:94] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v57
	ds_load_b128 v[79:82], v58
	ds_load_b128 v[87:90], v58 offset:2048
	ds_load_b128 v[91:94], v57 offset:2048
	ds_load_b128 v[99:102], v57 offset:4096
	ds_load_b128 v[95:98], v58 offset:4096
	ds_load_b128 v[103:106], v58 offset:6144
	ds_load_b128 v[107:110], v57 offset:6144
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[79:86], v[33:40], v[111:118]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[87:94], v[33:40], v[111:118]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[95:102], v[33:40], v[111:118]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[99:102], v55
	ds_load_b128 v[95:98], v56
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[103:110], v[33:40], v[111:118]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v109, s51, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, 0x800, v109
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v109, v48
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s69, s1, s12
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s29, s69
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[95:102], v[25:32], v[119:126]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[95:98], v56 offset:2048
	ds_load_b128 v[99:102], v55 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[95:102], v[25:32], v[79:86]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[99:102], v55 offset:4096
	ds_load_b128 v[95:98], v56 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[95:102], v[25:32], v[87:94]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[95:98], v56 offset:6144
	ds_load_b128 v[99:102], v55 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[95:102], v[25:32], v[127:134]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[99:102], v52
	ds_load_b128 v[95:98], v53
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[95:102], v[9:16], v[119:126]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[95:98], v53 offset:2048
	ds_load_b128 v[99:102], v52 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[95:102], v[9:16], v[79:86]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[99:102], v52 offset:4096
	ds_load_b128 v[95:98], v53 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[95:102], v[9:16], v[87:94]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[95:98], v53 offset:6144
	ds_load_b128 v[99:102], v52 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[95:102], v[9:16], v[127:134]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[99:102], v50
	ds_load_b128 v[95:98], v51
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[95:102], v[1:8], v[119:126]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[95:98], v51 offset:2048
	ds_load_b128 v[99:102], v50 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v108, s62, v121 :: v_dual_mul_f32 v105, s62, v123
	v_dual_mul_f32 v106, s62, v124 :: v_dual_mul_f32 v113, s62, v125
	v_mul_f32_e32 v107, s62, v122
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[95:102], v[1:8], v[79:86]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[99:102], v50 offset:4096
	ds_load_b128 v[95:98], v51 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v114, s62, v126 :: v_dual_mul_f32 v115, s62, v79
	v_dual_mul_f32 v111, s62, v80 :: v_dual_mul_f32 v112, s62, v81
	v_mad_u64_u32 v[79:80], null, s4, s39, v[42:43]
	v_dual_mul_f32 v116, s62, v82 :: v_dual_mul_f32 v117, s62, v83
	v_mul_f32_e32 v118, s62, v84
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v80, 1, v79
	v_add_lshl_u32 v82, v79, s66, 1
	v_add_lshl_u32 v81, v79, s39, 1
	v_add_lshl_u32 v79, v79, s67, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[95:102], v[1:8], v[87:94]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[95:98], v51 offset:6144
	ds_load_b128 v[99:102], v50 offset:6144
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v84, 0x80000000, v81, s2
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v121, s62, v87 :: v_dual_mul_f32 v110, s62, v89
	v_dual_mul_f32 v125, s62, v92 :: v_dual_mul_f32 v124, s62, v91
	v_dual_mul_f32 v135, s62, v94 :: v_dual_mul_f32 v122, s62, v88
	v_mul_f32_e32 v123, s62, v90
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[95:102], v[1:8], v[127:134]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v99, s62, v119 :: v_dual_mul_f32 v100, s62, v120
	v_dual_mul_f32 v119, s62, v85 :: v_dual_mul_f32 v120, s62, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v126, s62, v93 :: v_dual_mul_f32 v127, s62, v127
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[91:94], v80, s[56:59], 0 offen
	buffer_load_b128 v[95:98], v82, s[56:59], 0 offen
	buffer_load_b128 v[80:83], v79, s[56:59], 0 offen
	buffer_load_b128 v[84:87], v84, s[56:59], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v104, s62, v134 :: v_dual_add_nc_u32 v79, 0, v59
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v128, s62, v128 :: v_dual_mul_f32 v129, s62, v129
	v_dual_mul_f32 v90, s62, v130 :: v_dual_mul_f32 v101, s62, v132
	v_dual_mul_f32 v102, s62, v131 :: v_dual_mul_f32 v103, s62, v133
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v88.l, v91.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v89.l, v95.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v89.h, v80.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v88.h, v84.l
	v_mov_b16_e32 v84.l, v91.h
	v_mov_b16_e32 v80.l, v95.h
	ds_store_b64 v79, v[88:89]
	v_mov_b16_e32 v88.h, v85.l
	v_mov_b32_e32 v79, v84
	v_mov_b16_e32 v85.l, v92.h
	v_mov_b16_e32 v89.l, v96.l
	v_mov_b16_e32 v89.h, v81.l
	v_mov_b16_e32 v88.l, v92.l
	ds_store_b64 v64, v[79:80]
	ds_store_b64 v65, v[88:89]
	v_mov_b16_e32 v81.l, v96.h
	v_mov_b16_e32 v88.h, v86.l
	v_mov_b16_e32 v86.l, v93.h
	v_mov_b32_e32 v80, v85
	v_mov_b16_e32 v89.l, v97.l
	v_mov_b16_e32 v89.h, v82.l
	v_mov_b16_e32 v88.l, v93.l
	ds_store_b64 v66, v[80:81]
	ds_store_b64 v67, v[88:89]
	v_mov_b16_e32 v80.h, v83.l
	v_mov_b16_e32 v83.l, v98.h
	v_mov_b16_e32 v82.l, v97.h
	v_mov_b32_e32 v81, v86
	v_mov_b16_e32 v80.l, v98.l
	v_mov_b16_e32 v79.l, v94.l
	v_mov_b16_e32 v79.h, v87.l
	v_mov_b32_e32 v88, v83
	v_mov_b16_e32 v87.l, v94.h
	ds_store_b64 v68, v[81:82]
	ds_store_b64 v69, v[79:80]
	ds_store_b64 v70, v[87:88]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, 52, v109
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v79, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, 50, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s2, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 48, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s2, s2, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 46, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v128, s2
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s4, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 44, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v127, s4
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s5, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 42, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v135, s5
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 40, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v126, s7
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 38, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v125, s8
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v79, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 36, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v124, s9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v85, v82, v83
.Ltmp2:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v79, v48
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v129, s6
	v_cndmask_b32_e64 v87, 0xff800000, v123, s10
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s69
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v88, v80, v81, v79
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v110, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v91, v86, v87, v84
	v_max3_f32 v110, v91, v89, v88
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v88, 34, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v88, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v88, 32, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 30, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v122, s12
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 28, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s14, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 26, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v120, s14
	v_mov_b32_e32 v120, v43
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s15, s69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 24, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v119, s15
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s16, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 22, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v118, s16
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 20, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v117, s17
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s18, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v88, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 18, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v116, s18
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v88, v48
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v121, s13
	v_cndmask_b32_e64 v96, 0xff800000, v112, s19
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s69
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v92, v88, v89
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v111, s20
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v94, v95, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v112, v98, v96, v97
	v_max3_f32 v116, v112, v111, v93
.Ltmp10:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v93, 2, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v99, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v93, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v93, 16, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s35, s21, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v93, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v93, 14, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v100, s35
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s23, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v93, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v93, 12, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v93, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v93, 10, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v114, s22
	v_or_b32_e32 v114, s51, v63
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s28, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v93, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v93, 8, v109
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v114, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v114, 58, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v93, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v93, 6, v109
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v114, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v114, 56, v109
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v106, s24
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v93, v48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v93, 4, v109
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v114, v48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v114, 60, v109
	v_or_b32_e32 v109, 54, v109
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s69
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v93, v48
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v105, s25
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v114, v48
	v_cmp_le_i32_e64 s36, v109, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v107, s26
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s69
	s_and_b32 s31, s30, s69
	s_and_b32 s30, s33, s69
	s_and_b32 s33, s36, s69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v108, s27
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v99, v107, v105, v106
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v102, s31
	v_cndmask_b32_e64 v109, 0xff800000, v90, s33
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v111, v112
.Ltmp14:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v103, s30
	v_cndmask_b32_e64 v104, 0xff800000, v104, s28
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v114, v109, v102
	v_max3_f32 v117, v93, v108, v99
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v115, s21
	v_cndmask_b32_e64 v93, 0xff800000, v113, s23
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s69
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v90, v103, v104
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v101, s29
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s60
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v93, v100, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v90, v114, v101, v90
	v_max3_f32 v113, v117, v113, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v90, v113, v110, v90
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v90, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v43, v120, v90, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v93, v43
	v_sub_f32_e32 v110, v111, v43
	v_sub_f32_e32 v108, v108, v43
	v_sub_f32_e32 v107, v107, v43
	v_sub_f32_e32 v105, v105, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v111, v110
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v107, v107
	v_exp_f32_e32 v105, v105
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v106, v43
	v_sub_f32_e32 v94, v94, v43
	v_sub_f32_e32 v89, v89, v43
	v_sub_f32_e32 v92, v92, v43
	v_sub_f32_e32 v82, v82, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v93, s23
	v_cndmask_b32_e64 v111, 0, v111, s34
	v_cndmask_b32_e64 v108, 0, v108, s27
	v_cndmask_b32_e64 v107, 0, v107, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v93.l, v128.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v112, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v112.l, v111.h
	v_cmp_o_f32_e64 s26, v107, v107
	v_cmp_o_f32_e64 s27, v108, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s25
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v90, v90
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v128, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v105, v105
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v89, v89
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v99, v99, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v106, v106
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v90, s35
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e32 v90.h, 0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v111, v111
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v90.l, v110.h
	v_mov_b16_e32 v112.h, v90.h
	v_cmp_o_f32_e64 s34, v110, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v100, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v93.h, v90.h
	v_and_b32_e32 v113, 1, v90
	v_and_b32_e32 v112, 1, v112
	v_mov_b16_e32 v90.l, v107.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v98, v98, v43 :: v_dual_and_b32 v93, 1, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v110, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v112, v111, v112, 0x7fff
	v_and_b32_e32 v115, 1, v90
	v_mov_b16_e32 v90.l, v106.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v100, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s34
	v_cndmask_b16 v113.l, 0x7fff, v112.h, s35
	v_add3_u32 v115, v107, v115, 0x7fff
	v_add3_u32 v93, v128, v93, 0x7fff
	v_cmp_o_f32_e64 s22, v100, v100
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v114, v113, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v115.h, 0x7fff, v115.h, s26
	v_cndmask_b16 v93.l, 0x7fff, v93.h, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s21
	v_cndmask_b32_e64 v131, 0, v94, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v112, v114, v113, v60
	v_perm_b32 v113, v114, v113, v61
	v_mov_b16_e32 v114.h, v90.h
	v_mov_b16_e32 v114.l, v108.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v99, v99
	v_mov_b16_e32 v94.h, v90.h
	v_mov_b16_e64 v94.l, v131.h
	v_and_b32_e32 v114, 1, v114
	v_cmp_o_f32_e64 s17, v131, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v96, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v98, v98
	v_and_b32_e32 v94, 1, v94
	v_add3_u32 v114, v108, v114, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v87, v43
	v_sub_f32_e32 v102, v102, v43
	v_sub_f32_e32 v80, v80, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v94, v131, v94, 0x7fff
	v_cndmask_b16 v115.l, 0x7fff, v114.h, s27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v80, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v94.l, 0x7fff, v94.h, s17
	v_permlanex16_b32 v116, v115, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v97, v97, v43
	v_sub_f32_e32 v95, v95, v43
	v_sub_f32_e32 v91, v91, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v114, v116, v115, v60
	v_perm_b32 v115, v116, v115, v61
	v_mov_b16_e32 v116.h, v90.h
	v_mov_b16_e32 v116.l, v105.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v85, v85, v43 :: v_dual_and_b32 v116, 1, v116
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v116, v105, v116, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v97, s18
	v_cndmask_b32_e64 v132, 0, v95, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.l, 0x7fff, v116.h, s25
	v_and_b32_e32 v116, 1, v90
	v_mov_b16_e32 v90.l, v100.h
	v_cmp_o_f32_e64 s16, v132, v132
	v_cmp_o_f32_e64 s18, v130, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v116, v106, v116, 0x7fff
	v_cndmask_b16 v117.h, 0x7fff, v116.h, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v118, v117, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v116, v118, v117, v60
	v_perm_b32 v117, v118, v117, v61
	v_and_b32_e32 v118, 1, v90
	v_mov_b16_e32 v90.l, v98.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v118, v100, v118, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v128, v100
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v93.h, 0x7fff, v118.h, s22
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v119, v93, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v118, v119, v93, v60
	v_perm_b32 v119, v119, v93, v61
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v93, v120, v43 :: v_dual_add_nc_u32 v120, 0, v62
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[120:123], v120
	ds_load_b128 v[124:127], v71
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v93, 0, v93, s22
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v93
	v_mul_f32_e32 v18, v18, v93
	v_mul_f32_e32 v19, v19, v93
	v_mul_f32_e32 v20, v20, v93
	v_mul_f32_e32 v21, v21, v93
	v_mul_f32_e32 v22, v22, v93
	v_mul_f32_e32 v23, v23, v93
	v_mul_f32_e32 v24, v24, v93
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[120:127], v[112:119], v[17:24]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v112.h, v90.h
	v_mov_b16_e32 v112.l, v99.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[120:123], v72
	ds_load_b128 v[124:127], v73
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v112, 1, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v112, v99, v112, 0x7fff
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v98
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v113.l, 0x7fff, v112.h, s21
	v_and_b32_e32 v112, 1, v90
	v_mov_b16_e64 v90.l, v130.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v97, 1, v90
	v_mov_b16_e64 v90.l, v132.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v96, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v96.h, v90.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v97, v130, v97, 0x7fff
	v_and_b32_e32 v95, 1, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v96.l, v129.h
	v_cmp_o_f32_e64 s19, v129, v129
	v_add3_u32 v95, v132, v95, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v96, 1, v96
	v_cndmask_b16 v94.h, 0x7fff, v95.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v96, v129, v96, 0x7fff
	v_permlanex16_b32 v95, v94, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v96.l, 0x7fff, v96.h, s19
	v_cndmask_b16 v96.h, 0x7fff, v97.h, s18
	v_perm_b32 v116, v95, v94, v60
	v_perm_b32 v117, v95, v94, v61
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v92
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v91, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v91.h, v90.h
	v_permlanex16_b32 v97, v96, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v91.l, v92.h
	v_cmp_o_f32_e64 s15, v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_perm_b32 v115, v97, v96, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v94, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v91
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v94.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v94, v94
	v_add3_u32 v91, v92, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v95, 1, v90
	v_cndmask_b16 v91.l, 0x7fff, v91.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v95, v94, v95, 0x7fff
	v_cndmask_b16 v91.h, 0x7fff, v95.h, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v95, v91, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v118, v95, v91, v60
	v_perm_b32 v119, v95, v91, v61
	v_mov_b32_e32 v91, v78
	v_add3_u32 v112, v98, v112, 0x7fff
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v95, v111, v110
	v_add_f32_e32 v110, v131, v132
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v109, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v111, v85
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v113.h, 0x7fff, v112.h, s20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v87, s10
	v_cndmask_b32_e64 v87, 0, v80, s4
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v78.h, v90.h
	v_permlanex16_b32 v114, v113, s68, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s4, v85, v85
	v_cmp_o_f32_e64 s15, v87, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v112, v114, v113, v60
	v_perm_b32 v113, v114, v113, v61
	v_perm_b32 v114, v97, v96, v60
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v96, v105, v106
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.h, v90.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v43
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v97, v108, v107
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v43
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[120:127], v[112:119], v[17:24]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v84, v84
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v129, v130
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v106.h, v90.h
	v_mov_b16_e32 v108.h, v90.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v84, s9
	v_cndmask_b32_e64 v84, 0, v111, s8
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v101, v101, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v108.l, v114.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s8, v114, v114
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v101
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v82, s7
	v_cndmask_b32_e64 v82, 0, v81, s2
	v_cndmask_b32_e64 v81, 0, v98, s33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v86, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v78.l, v101.h
	v_cmp_o_f32_e64 s14, v101, v101
	v_cmp_o_f32_e64 s2, v84, v84
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v86
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v89, s12
	v_cndmask_b32_e64 v89, 0, v102, s31
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v92, v94
	v_add_f32_e32 v92, v95, v97
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v83, v83
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v96, v100
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v96, v110, v102
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v112, s29
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v100, v114, v84 :: v_dual_add_f32 v95, v99, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_add_f32 v97, v109, v85 :: v_dual_sub_f32 v88, v88, v43
.Ltmp41:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s5
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v87, v82
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v106.l, v109.h
	v_mov_b16_e32 v107.h, v90.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v103, s30
.Ltmp44:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v101, v83
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.l, v89.h
	v_and_b32_e32 v78, 1, v78
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v94
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v86.h
	v_cmp_o_f32_e64 s5, v86, v86
	v_and_b32_e32 v107, 1, v107
	v_add3_u32 v78, v101, v78, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v88, s13
	v_cndmask_b32_e64 v88, 0, v79, s6
	v_cndmask_b32_e64 v79, 0, v104, s28
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v89, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v94, v95, v96 :: v_dual_add_f32 v103, v113, v86
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.l, v113.h
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v100, v99
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v101.l, 0x7fff, v78.h, s14
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v92, v94 :: v_dual_add_f32 v97, v103, v97
	v_add_f32_e32 v103, v88, v81
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v88, v88
	v_cmp_o_f32_e64 s17, v89, v89
	v_add3_u32 v89, v89, v107, 0x7fff
	v_cmp_o_f32_e64 s6, v113, v113
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v102, v103
	v_add_f32_e32 v102, v98, v79
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v90.h
	v_mov_b16_e32 v103.l, v87.h
	v_cmp_o_f32_e64 s7, v109, v109
	v_add3_u32 v108, v114, v108, 0x7fff
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v104, v102
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v104, 1, v105
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v95, v97, v99 :: v_dual_and_b32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v96, v100, v102 :: v_dual_and_b32 v103, 1, v103
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.l, v88.h
	v_add3_u32 v104, v113, v104, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v106, v109, v106, 0x7fff
	v_add3_u32 v87, v87, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v92, v95, v96 :: v_dual_and_b32 v105, 1, v105
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.h, v90.h
	v_cmp_o_f32_e64 s13, v83, v83
	v_cndmask_b16 v102.l, 0x7fff, v87.h, s15
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v92
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v88, v88, v105, 0x7fff
	v_mov_b16_e32 v109.l, v98.h
	v_cndmask_b16 v104.l, 0x7fff, v89.h, s17
	v_cndmask_b16 v87.l, 0x7fff, v104.h, s6
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v92, v78, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v103.l, 0x7fff, v88.h, s16
	v_and_b32_e32 v109, 1, v109
	v_cndmask_b16 v88.l, 0x7fff, v106.h, s7
	v_cndmask_b16 v89.l, 0x7fff, v108.h, s8
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v92
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v92, 1, v90
	v_mov_b16_e32 v90.l, v85.h
	v_cmp_o_f32_e64 s12, v82, v82
	v_cmp_o_f32_e64 s11, v81, v81
	v_cmp_o_f32_e64 s18, v98, v98
	v_add3_u32 v86, v86, v92, 0x7fff
	v_and_b32_e32 v92, 1, v90
	v_mov_b16_e32 v90.l, v84.h
	v_add3_u32 v98, v98, v109, 0x7fff
	v_cmp_o_f32_e64 s9, v80, v80
	v_cndmask_b16 v87.h, 0x7fff, v86.h, s5
	v_add3_u32 v85, v85, v92, 0x7fff
	v_and_b32_e32 v86, 1, v90
	v_mov_b16_e32 v90.l, v83.h
	v_cndmask_b16 v105.l, 0x7fff, v98.h, s18
	v_permlanex16_b32 v92, v87, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v88.h, 0x7fff, v85.h, s4
	v_add3_u32 v84, v84, v86, 0x7fff
	v_and_b32_e32 v85, 1, v90
	v_mov_b16_e32 v90.l, v82.h
	v_perm_b32 v94, v92, v87, v60
	v_permlanex16_b32 v86, v88, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v89.h, 0x7fff, v84.h, s2
	v_add3_u32 v83, v83, v85, 0x7fff
	v_and_b32_e32 v84, 1, v90
	v_mov_b16_e32 v90.l, v81.h
	v_perm_b32 v95, v92, v87, v61
	v_permlanex16_b32 v85, v89, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v101.h, 0x7fff, v83.h, s13
	v_add3_u32 v82, v82, v84, 0x7fff
	v_and_b32_e32 v83, 1, v90
	v_perm_b32 v96, v86, v88, v60
	v_perm_b32 v97, v86, v88, v61
	v_permlanex16_b32 v84, v101, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v98, v85, v89, v60
	v_add3_u32 v81, v81, v83, 0x7fff
	v_perm_b32 v99, v85, v89, v61
	v_cndmask_b16 v102.h, 0x7fff, v82.h, s12
	v_perm_b32 v100, v84, v101, v60
	v_perm_b32 v101, v84, v101, v61
	v_cndmask_b16 v103.h, 0x7fff, v81.h, s11
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v74
	ds_load_b128 v[85:88], v75
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v80.h
	v_cmp_o_f32_e64 s10, v79, v79
	v_permlanex16_b32 v92, v102, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_dual_fmac_f32 v78, v91, v93 :: v_dual_and_b32 v89, 1, v90
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v79.h
	v_add3_u32 v89, v80, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v90, 1, v90
	v_cndmask_b16 v104.h, 0x7fff, v89.h, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v90, v79, v90, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[94:101], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[79:82], v76
	ds_load_b128 v[83:86], v77
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v105.h, 0x7fff, v90.h, s10
	v_permlanex16_b32 v87, v103, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v88, v104, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v94, v92, v102, v60
	v_perm_b32 v95, v92, v102, v61
	v_permlanex16_b32 v89, v105, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v96, v87, v103, v60
	v_perm_b32 v97, v87, v103, v61
	v_perm_b32 v98, v88, v104, v60
	v_perm_b32 v99, v88, v104, v61
	v_perm_b32 v100, v89, v105, v60
	v_perm_b32 v101, v89, v105, v61
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[79:86], v[94:101], v[17:24]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v43, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v78, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s50, s50, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s39, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s37, s50
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v43 :: v_dual_cndmask_b32 v4, 0, v17
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v18 :: v_dual_cndmask_b32 v12, 0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v22 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v78, vcc_lo
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v19
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp72:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v20 :: v_dual_cndmask_b32 v14, 0, v23
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v24
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp76:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp79:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp101:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp111:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp113:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
	v_add_f32_e32 v15, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v13 :: v_dual_add_f32 v17, v18, v20
	v_dual_mov_b32 v18, v14 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp139:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s48, s4
	s_addc_u32 s5, s49, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp140:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp141:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v44
	v_and_b32_e32 v1, 28, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s39, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp142:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 136
		.amdhsa_next_free_sgpr 70
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 136
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7488
; TotalNumSgprs: 72
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 136
; Occupancy: 10
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
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
