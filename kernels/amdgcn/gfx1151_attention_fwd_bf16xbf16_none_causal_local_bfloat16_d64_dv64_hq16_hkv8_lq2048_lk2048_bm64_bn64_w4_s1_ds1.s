	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[78:79], s[0:1], 0x5c
	s_load_b32 s10, s[0:1], 0x84
	s_load_b64 s[80:81], s[0:1], 0x0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v32, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v5, v7 :: v_dual_lshlrev_b32 v64, 3, v32
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v65
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s88, s4, s2
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[76:77], s[0:1], 0x38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v6, v7 :: v_dual_and_b32 v33, 0x60, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 15, v0
	v_dual_mov_b32 v15, v7 :: v_dual_lshlrev_b32 v24, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[104:105], null, s78, v65, v[64:65]
	s_mul_i32 s5, s78, s88
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s78, v64
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s81, s81, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v33
	v_dual_mov_b32 v13, v7 :: v_dual_lshlrev_b32 v112, 4, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v24, 0x70, v24
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[105:106], null, s78, 48, v[104:105]
	v_lshl_add_u32 v110, s78, 4, v104
	v_lshl_add_u32 v111, s78, 5, v104
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v104, s5, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v109, 16, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, v110, s5, 1
	v_add_lshl_u32 v3, v111, s5, 1
	v_add_lshl_u32 v4, v105, s5, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v0, v7
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x3
	buffer_load_b128 v[35:38], v1, s[80:83], 0 offen
	buffer_load_b128 v[39:42], v2, s[80:83], 0 offen
	buffer_load_b128 v[43:46], v3, s[80:83], 0 offen
	buffer_load_b128 v[47:50], v4, s[80:83], 0 offen
	v_mov_b32_e32 v3, v7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v108, v34, v66
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s2, s4, s8
	v_mov_b32_e32 v1, v7
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v51, v112, v24
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s2, s2, s10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s4, v108
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s10, s4
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s2, s2, 0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 64
	v_mov_b32_e32 v4, v7
	s_add_i32 s5, s4, s9
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s4, s4, 0x800
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s4, s4, 63
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s4, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 26
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s4, s4, s6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	v_dual_mov_b32 v2, v7 :: v_dual_add_nc_u32 v113, 0, v51
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
	v_mov_b32_e32 v129, v7
	v_cmp_eq_u32_e64 s64, 0, v109
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s89, s2, 0x7fffffc0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v34
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s90, s5, s4
	s_mov_b32 s68, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s89, s90
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v113, v[35:38]
	s_waitcnt vmcnt(2)
	ds_store_b128 v113, v[39:42] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v113, v[43:46] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v113, v[47:50] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_lshlrev_b32 v0, 7, v66
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 6, v33
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 4, v32
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s10, v34
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	s_load_b32 s11, s[0:1], 0x64
	v_mov_b32_e32 v25, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v1, v0, v1, v2
	v_or_b32_e32 v116, v2, v0
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v2, 0x7632
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s12, s4, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, 0x70, v1, 0
	v_xad_u32 v6, 0x60, v1, 0
	v_xad_u32 v7, 0x50, v1, 0
	v_xad_u32 v8, v1, 64, 0
	v_xad_u32 v9, v1, 48, 0
	v_xad_u32 v10, v1, 32, 0
	ds_load_b128 v[36:39], v5
	ds_load_b128 v[32:35], v6
	ds_load_b128 v[44:47], v7
	ds_load_b128 v[40:43], v8
	ds_load_b128 v[52:55], v9
	ds_load_b128 v[48:51], v10
	v_xad_u32 v5, v1, 16, 0
	v_cndmask_b32_e64 v0, 0x1054, v0, s64
	v_cndmask_b32_e64 v2, 0x3276, v2, s64
	s_load_b128 s[4:7], s[0:1], 0x8
	v_dual_mov_b32 v26, v24 :: v_dual_add_nc_u32 v1, 0, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s12
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[60:63], v5
	ds_load_b128 v[56:59], v1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	v_xor_b32_e32 v5, 32, v116
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v2, v2, 8, v2
	s_sub_i32 s1, s3, s1
	v_xor_b32_e32 v1, 16, v116
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	v_add_nc_u32_e32 v121, 0, v5
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v0, 0x540054, v0
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v2, 0x760076, v2
	s_bfe_i32 s1, s1, 0x80000
	v_dual_mov_b32 v27, v24 :: v_dual_add_nc_u32 v4, s9, v3
	s_sext_i32_i16 s1, s1
	v_xor_b32_e32 v6, 48, v116
	v_xor_b32_e32 v7, 64, v116
	v_xor_b32_e32 v8, 0x50, v116
	v_xor_b32_e32 v9, 0x60, v116
	v_xor_b32_e32 v10, 0x70, v116
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v2, v2, 4, v2
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	s_lshl_b32 s1, s1, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[106:107], null, s79, v65, v[64:65]
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s0, s0, 0xffffc000
	s_and_b32 s92, s1, 0xfffff800
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v114, 4, v109
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s92, s92, s0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v115, s8, v3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s79, v64
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v107, 0x5040504, v0
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v117, 0x7060706, v2
	v_lshl_add_u32 v118, v66, 1, 0
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v120, 0, v1
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v122, 0, v6
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v123, 0, v7
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v124, 0, v8
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v125, 0, v9
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v126, 0, v10
	v_min_i32_e32 v127, v3, v4
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v129, v24
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s91, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_lshl_b32 s93, s79, 4
	s_lshl_b32 s94, s79, 5
	s_mul_i32 s95, s79, 48
	s_and_b32 s85, s7, 0xffff
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s96, 0x76543210
	s_mov_b32 s84, s6
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s1, s92, s89
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v96, 0, v116
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s1, s78
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v64, s68 :: v_dual_mov_b32 v67, s71
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v72, s3, v104, 1
	v_add_lshl_u32 v73, s3, v110, 1
	v_add_lshl_u32 v74, s3, v111, 1
	v_add_lshl_u32 v75, s3, v105, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v65, s69
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	v_cndmask_b32_e32 v76, 0x80000000, v73, vcc_lo
	v_cndmask_b32_e32 v80, 0x80000000, v74, vcc_lo
	v_cndmask_b32_e32 v84, 0x80000000, v75, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[72:75], v72, s[80:83], 0 offen
	buffer_load_b128 v[76:79], v76, s[80:83], 0 offen
	buffer_load_b128 v[80:83], v80, s[80:83], 0 offen
	buffer_load_b128 v[84:87], v84, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v66, s70 :: v_dual_mov_b32 v69, s73
	v_dual_mov_b32 v68, s72 :: v_dual_mov_b32 v71, s75
	v_mov_b32_e32 v70, s74
	v_mad_u64_u32 v[162:163], null, s1, s79, v[106:107]
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v113, v[72:75]
	s_waitcnt vmcnt(2)
	ds_store_b128 v113, v[76:79] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v113, v[80:83] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v113, v[84:87] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v120
	ds_load_b128 v[72:75], v96
	ds_load_b128 v[80:83], v96 offset:2048
	ds_load_b128 v[84:87], v120 offset:2048
	ds_load_b128 v[92:95], v120 offset:4096
	ds_load_b128 v[88:91], v96 offset:4096
	ds_load_b128 v[96:99], v96 offset:6144
	ds_load_b128 v[100:103], v120 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[72:79], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[80:87], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[88:95], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[96:103], v[56:63], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v122
	ds_load_b128 v[64:67], v121
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v100, 0, v112
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[64:71], v[48:55], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v121 offset:2048
	ds_load_b128 v[68:71], v122 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[64:71], v[48:55], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v122 offset:4096
	ds_load_b128 v[64:67], v121 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[64:71], v[48:55], v[146:153]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v121 offset:6144
	ds_load_b128 v[68:71], v122 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[64:71], v[48:55], v[154:161]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v124
	ds_load_b128 v[64:67], v123
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[64:71], v[40:47], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v123 offset:2048
	ds_load_b128 v[68:71], v124 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[64:71], v[40:47], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v124 offset:4096
	ds_load_b128 v[64:67], v123 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[64:71], v[40:47], v[146:153]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v123 offset:6144
	ds_load_b128 v[68:71], v124 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[64:71], v[40:47], v[154:161]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v126
	ds_load_b128 v[64:67], v125
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[130:137], v[64:71], v[32:39], v[130:137]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v125 offset:2048
	ds_load_b128 v[68:71], v126 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v77, s91, v133 :: v_dual_lshlrev_b32 v128, 1, v162
	v_dual_mul_f32 v80, s91, v130 :: v_dual_mul_f32 v83, s91, v135
	v_dual_mul_f32 v81, s91, v131 :: v_dual_mul_f32 v76, s91, v132
	v_mul_f32_e32 v79, s91, v137
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[138:145], v[64:71], v[32:39], v[138:145]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v126 offset:4096
	ds_load_b128 v[64:67], v125 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v82, s91, v134
	v_dual_mul_f32 v78, s91, v136 :: v_dual_mul_f32 v87, s91, v141
	v_dual_mul_f32 v84, s91, v138 :: v_dual_mul_f32 v91, s91, v143
	v_dual_mul_f32 v85, s91, v139 :: v_dual_mul_f32 v90, s91, v142
	v_mul_f32_e32 v93, s91, v144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[64:71], v[32:39], v[146:153]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v125 offset:6144
	ds_load_b128 v[68:71], v126 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v94, s91, v145
	v_dual_mul_f32 v86, s91, v140 :: v_dual_mul_f32 v103, s91, v147
	v_dual_mul_f32 v102, s91, v146 :: v_dual_mul_f32 v133, s91, v152
	v_mul_f32_e32 v131, s91, v150
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[154:161], v[64:71], v[32:39], v[154:161]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v64, v162, s93, 1
	v_add_lshl_u32 v65, v162, s94, 1
	v_add_lshl_u32 v66, v162, s95, 1
	v_cndmask_b32_e64 v67, 0x80000000, v128, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v128, s91, v148 :: v_dual_mul_f32 v135, s91, v154
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v96, 0x80000000, v66, s0
	s_clause 0x3
	buffer_load_b128 v[68:71], v67, s[84:87], 0 offen
	buffer_load_b128 v[72:75], v64, s[84:87], 0 offen
	buffer_load_b128 v[64:67], v65, s[84:87], 0 offen
	buffer_load_b128 v[96:99], v96, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v130, s91, v149 :: v_dual_mul_f32 v137, s91, v156
	v_dual_mul_f32 v132, s91, v151 :: v_dual_mul_f32 v95, s91, v160
	v_dual_mul_f32 v134, s91, v153 :: v_dual_mul_f32 v89, s91, v159
	v_dual_mul_f32 v136, s91, v155 :: v_dual_mul_f32 v101, s91, v161
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v100, v[68:71]
	s_waitcnt vmcnt(2)
	ds_store_b128 v100, v[72:75] offset:2048
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s89, v114
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v100, v[64:67] offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.h, 0
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v88, s91, v157
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s89, s89, 64
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, 52, v68
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v68, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s65, v127, v68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v72.h, v71.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s4, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 50, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s65, s3
	s_and_b32 s3, s2, s3
	s_and_b32 s1, s4, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 48, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v80, s3
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s6, s5
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 46, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s8, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 44, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s2, s4
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v136, s8
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s10, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 42, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s2, s5
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v135, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s12, s11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 40, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s2, s6
	s_and_b32 s12, s2, s7
	s_and_b32 s7, s2, s1
	s_and_b32 s10, s14, s13
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 38, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s2, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v137, s7
	v_cndmask_b32_e64 v133, 0xff800000, v133, s12
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s16, s15
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 36, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s2, s14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s11
	v_cndmask_b32_e64 v138, 0xff800000, v131, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s18, s17
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 34, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s2, s15
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v132, s13
	v_cndmask_b32_e64 v75, 0xff800000, v130, s15
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s20, s19
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 32, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s2, s16
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v64, v135, v136, v137
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v128, s16
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s22, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 30, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s2, s17
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v139, v133, v134
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, 0xff800000, v103, s17
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s24, s23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 28, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s2, s18
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v74, v75, v138
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v102, s18
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s26, s25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 26, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s2, s19
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v64, v66, v65, v64
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, 0xff800000, v94, s19
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s28, s27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 24, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s2, s20
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v142, v73, v140
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v93, s20
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s30, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 22, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s2, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v91, s21
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s33, s31
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 20, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s2, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v90, s22
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s35, s34
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s37, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 18, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s2, s23
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v143, v144, v141
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s23
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s37, s36
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s40, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 2, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s2, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s24
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s40, s38
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s44, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 16, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s2, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s25
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s44, s42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s41, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 14, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s2, s26
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v85, v86, v87
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v81, s31
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, s41, s39
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s43, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s45, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 12, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s2, s35
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v66, v65, v67
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s26
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, s45, s43
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s47, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 10, v68
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v80, v81
.Ltmp18:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s47, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s49, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 8, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s49, s48
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s51, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 6, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s2, s27
	s_and_b32 s27, s2, s36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s29
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s51, s50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s54, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 4, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s2, s28
	s_and_b32 s28, s2, s37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v82, s30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s54, s52
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s58, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 62, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s2, s33
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v92, s91, v158
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s58, s56
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s53, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s55, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 60, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s2, s34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s28
	v_cndmask_b32_e64 v76, 0xff800000, v76, s34
	v_cndmask_b32_e64 v79, 0xff800000, v79, s27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s57, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s59, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 58, v68
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v77, v82, v83
.Ltmp20:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s55, s53
	s_and_b32 s39, s59, s57
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s61, v127, v69
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v69, 56, v68
	v_or_b32_e32 v68, 54, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s2, s38
	s_and_b32 s5, s2, s39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v101, s1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v69, v115
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s63, v127, v69
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v68, v115
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s67, v127, v68
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v95, s5
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v66, v76, v67
.Ltmp22:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s63, s62
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v78, v79, v84
.Ltmp24:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s67, s66
	s_and_b32 s6, s2, s41
	s_and_b32 s10, s2, s42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v92, s6
	v_cndmask_b32_e64 v103, 0xff800000, v88, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s61, s60
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v66, v67, v65
.Ltmp26:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s2, s40
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v69, v70
.Ltmp28:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v89, s4
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v103, v101
.Ltmp30:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s89, s90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v67, v102, v66
	v_max3_f32 v64, v65, v64, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp33:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v68, v119, v64, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v81, v68
	v_sub_f32_e32 v65, v80, v68
	v_sub_f32_e32 v69, v69, v68
	v_sub_f32_e32 v102, v102, v68
	v_sub_f32_e32 v70, v70, v68
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v64, s31
	v_cndmask_b32_e64 v130, 0, v65, s3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v69, 0, v69, s5
	v_cndmask_b32_e64 v102, 0, v102, s4
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.l, v128.h
	v_mov_b16_e64 v72.l, v130.h
	v_cmp_o_f32_e64 s3, v128, v128
	v_cmp_o_f32_e64 s31, v130, v130
	v_cmp_o_f32_e64 s4, v102, v102
	v_and_b32_e32 v64, 1, v71
	v_and_b32_e32 v65, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v128, v64, 0x7fff
	v_add3_u32 v65, v130, v65, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v130, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s3
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v88, v65, v64, v107
	v_perm_b32 v89, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v76, v68
	v_sub_f32_e32 v65, v77, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v64, s34
	v_cndmask_b32_e64 v132, 0, v65, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v64.l, v131.h
	v_mov_b16_e64 v71.l, v132.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v132, v132
	v_cmp_o_f32_e64 s31, v131, v131
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v131, v132
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	v_and_b32_e32 v65, 1, v71
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v67, v103, v68 :: v_dual_add_f32 v128, v128, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v131, v64, 0x7fff
	v_add3_u32 v65, v132, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v90, v65, v64, v107
	v_perm_b32 v91, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v82, v68
	v_sub_f32_e32 v65, v83, v68
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v64, s30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v146, 0, v65, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	v_mov_b16_e64 v64.l, v145.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v146.h
	v_cmp_o_f32_e64 s3, v146, v146
	v_cmp_o_f32_e64 s29, v145, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v145, v146 :: v_dual_and_b32 v64, 1, v64
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v71
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v100, v[96:99] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v145, v64, 0x7fff
	v_add3_u32 v65, v146, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s29
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v92, v65, v64, v107
	v_perm_b32 v93, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v78, v68
	v_sub_f32_e32 v65, v79, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v64, s28
	v_cndmask_b32_e64 v148, 0, v65, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v64.l, v147.h
	v_mov_b16_e64 v71.l, v148.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v148, v148
	v_cmp_o_f32_e64 s27, v147, v147
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v147, v148
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v130, v131, v132 :: v_dual_and_b32 v65, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v147, v64, 0x7fff
	v_add3_u32 v65, v148, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v101, v101, v68 :: v_dual_add_f32 v128, v128, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v94, v65, v64, v107
	v_perm_b32 v95, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v84, v68
	v_sub_f32_e32 v65, v85, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s6
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v64, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v150, 0, v65, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	v_mov_b16_e64 v64.l, v149.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v150.h
	v_cmp_o_f32_e64 s3, v150, v150
	v_cmp_o_f32_e64 s25, v149, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v145, v149, v150 :: v_dual_and_b32 v64, 1, v64
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v149, v64, 0x7fff
	v_add3_u32 v65, v150, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s25
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v80, v65, v64, v107
	v_perm_b32 v81, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v86, v68
	v_sub_f32_e32 v65, v87, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v64, s24
	v_cndmask_b32_e64 v152, 0, v65, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v64.l, v151.h
	v_mov_b16_e64 v71.l, v152.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v151, v152
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v152, v152
	v_cmp_o_f32_e64 s23, v151, v151
	v_and_b32_e32 v64, 1, v64
	v_and_b32_e32 v65, 1, v71
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v145, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v151, v64, 0x7fff
	v_add3_u32 v65, v152, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s23
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v82, v65, v64, v107
	v_perm_b32 v83, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v143, v68
	v_sub_f32_e32 v65, v144, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v64, s22
	v_cndmask_b32_e64 v144, 0, v65, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v64.l, v143.h
	v_mov_b16_e64 v71.l, v144.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v144, v144
	v_cmp_o_f32_e64 s21, v143, v143
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v65, 1, v71
	v_add3_u32 v64, v143, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v144, v65, 0x7fff
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v143, v143, v144
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v84, v65, v64, v107
	v_perm_b32 v85, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v141, v68
	v_sub_f32_e32 v65, v142, v68
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v64, s20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v142, 0, v65, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	v_mov_b16_e64 v64.l, v141.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v142.h
	v_cmp_o_f32_e64 s3, v142, v142
	v_cmp_o_f32_e64 s19, v141, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v64, 1, v64
	v_and_b32_e32 v65, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v141, v64, 0x7fff
	v_add3_u32 v65, v142, v65, 0x7fff
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v141, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s19
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v143, v141
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v131, v132
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v86, v65, v64, v107
	v_perm_b32 v87, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v73, v68
	v_sub_f32_e32 v65, v140, v68
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v128, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v64, s18
	v_cndmask_b32_e64 v153, 0, v65, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v64.l, v140.h
	v_mov_b16_e64 v71.l, v153.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v153, v153
	v_cmp_o_f32_e64 s17, v140, v140
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v65, 1, v71
	v_add3_u32 v64, v140, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v153, v65, 0x7fff
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v140, v153
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v72, v65, v64, v107
	v_perm_b32 v73, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v74, v68
	v_sub_f32_e32 v65, v75, v68
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v64, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v155, 0, v65, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	v_mov_b16_e64 v64.l, v154.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v155.h
	v_cmp_o_f32_e64 s3, v155, v155
	v_cmp_o_f32_e64 s15, v154, v154
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v142, v154, v155
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	v_and_b32_e32 v65, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v154, v64, 0x7fff
	v_add3_u32 v65, v155, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s15
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v74, v65, v64, v107
	v_perm_b32 v75, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v138, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v64, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v139, v68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v64.l, v138.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v138, v64, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v65, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v138, v138
	v_mov_b16_e64 v71.l, v139.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v139, v139
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s13
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v138, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v71
	v_add3_u32 v65, v139, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v76, v65, v64, v107
	v_perm_b32 v77, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v133, v68
	v_sub_f32_e32 v65, v134, v68
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v64, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v134, 0, v65, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	v_mov_b16_e64 v64.l, v133.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v71.l, v134.h
	v_cmp_o_f32_e64 s3, v134, v134
	v_cmp_o_f32_e64 s11, v133, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v64, 1, v64
	v_and_b32_e32 v65, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v133, v64, 0x7fff
	v_add3_u32 v65, v134, v65, 0x7fff
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v133, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s11
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v138, v133
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v65, v64, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v78, v65, v64, v107
	v_perm_b32 v79, v65, v64, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v135, v68
	v_sub_f32_e32 v65, v136, v68
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v64, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v71.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v65, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v64.l, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s8, v135, v135
	v_mov_b16_e64 v71.l, v136.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s3, v136, v136
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v135, v136
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v135, v64, 0x7fff
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v140, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s8
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v135, v133 :: v_dual_and_b32 v64, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v136, v64, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v64.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v64, v66, v65, v107
	v_perm_b32 v65, v66, v65, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v137, v68
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v67, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v71.l, v137.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s3, v137, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v66, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v66.l, v103.h
	v_cmp_o_f32_e64 s7, v103, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v103, v66, 0x7fff
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v103, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s7
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v134, v103
.Ltmp79:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v70, s1
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v101, v102
.Ltmp81:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v71
	v_mov_b16_e32 v71.l, v102.h
	v_cmp_o_f32_e64 s1, v69, v69
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v69, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp83:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v137, v66, 0x7fff
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v136
.Ltmp85:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.h, v71.h
	v_mov_b16_e64 v136.l, v101.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v67.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v101, v101
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v103, v70
.Ltmp87:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v71.h
	v_and_b32_e32 v136, 1, v136
	v_mov_b16_e32 v103.l, v69.h
	v_permlanex16_b32 v156, v67, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v131, v131, v70 :: v_dual_and_b32 v70, 1, v71
.Ltmp89:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.l, v134.h
	v_add3_u32 v101, v101, v136, 0x7fff
	v_and_b32_e32 v103, 1, v103
	v_perm_b32 v66, v156, v67, v107
	v_add3_u32 v70, v102, v70, 0x7fff
	v_and_b32_e32 v71, 1, v71
	v_cndmask_b16 v70.l, 0x7fff, v101.h, s3
	v_add3_u32 v69, v69, v103, 0x7fff
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v101, v119, v68
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s4
	v_cmp_o_f32_e64 s4, v134, v134
	v_add3_u32 v71, v134, v71, 0x7fff
	v_mov_b32_e32 v119, v68
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v68, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.l, 0x7fff, v69.h, s1
	v_permlanex16_b32 v69, v70, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s4
	v_perm_b32 v67, v156, v67, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v101, v71, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v132, 0, v68, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v68, v69, v70, v107
	v_perm_b32 v69, v69, v70, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v70, v101, v71, v107
	v_perm_b32 v71, v101, v71, v117
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v96, v118
	ds_load_u16_d16 v99, v118 offset:768
	ds_load_u16_d16 v100, v118 offset:1024
	ds_load_u16_d16 v101, v118 offset:1280
	ds_load_u16_d16 v102, v118 offset:1536
	ds_load_u16_d16 v103, v118 offset:1792
	ds_load_u16_d16 v98, v118 offset:512
	ds_load_u16_d16 v97, v118 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v118 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v118 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v118 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v118 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v118 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v118 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v118 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v118 offset:384
	v_dual_mov_b32 v128, v129 :: v_dual_mul_f32 v27, v27, v132
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v132
	v_mul_f32_e32 v25, v25, v132
	v_mul_f32_e32 v26, v26, v132
	v_mul_f32_e32 v28, v28, v132
	v_mul_f32_e32 v29, v29, v132
	v_mul_f32_e32 v30, v30, v132
	v_mul_f32_e32 v31, v31, v132
	v_mul_f32_e32 v16, v16, v132
	v_mul_f32_e32 v17, v17, v132
	v_mul_f32_e32 v18, v18, v132
	v_mul_f32_e32 v19, v19, v132
	v_mul_f32_e32 v20, v20, v132
	v_mul_f32_e32 v21, v21, v132
	v_mul_f32_e32 v22, v22, v132
	v_mul_f32_e32 v23, v23, v132
	v_mul_f32_e32 v8, v8, v132
	v_mul_f32_e32 v9, v9, v132
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[96:103], v[88:95], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v96, v118 offset:32
	ds_load_u16_d16 v97, v118 offset:288
	ds_load_u16_d16 v98, v118 offset:544
	ds_load_u16_d16 v99, v118 offset:800
	ds_load_u16_d16 v100, v118 offset:1056
	ds_load_u16_d16 v101, v118 offset:1312
	ds_load_u16_d16 v102, v118 offset:1568
	ds_load_u16_d16 v103, v118 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v118 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v118 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v118 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v118 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v118 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v118 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v118 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v118 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v132
	v_mul_f32_e32 v11, v11, v132
	v_mul_f32_e32 v12, v12, v132
	v_mul_f32_e32 v13, v13, v132
	v_mul_f32_e32 v14, v14, v132
	v_mul_f32_e32 v15, v15, v132
	v_mul_f32_e32 v0, v0, v132
	v_mul_f32_e32 v1, v1, v132
	v_mul_f32_e32 v2, v2, v132
	v_mul_f32_e32 v3, v3, v132
	v_mul_f32_e32 v4, v4, v132
	v_mul_f32_e32 v5, v5, v132
	v_mul_f32_e32 v6, v6, v132
	v_mul_f32_e32 v7, v7, v132
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v130, v131
.Ltmp91:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[96:103], v[88:95], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v98, v118 offset:576
	ds_load_u16_d16 v99, v118 offset:832
	ds_load_u16_d16 v100, v118 offset:1088
	ds_load_u16_d16 v101, v118 offset:1344
	ds_load_u16_d16 v102, v118 offset:1600
	ds_load_u16_d16 v103, v118 offset:1856
	ds_load_u16_d16 v96, v118 offset:64
	ds_load_u16_d16 v97, v118 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v118 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v118 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v118 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v118 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v118 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v118 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v118 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v118 offset:448
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v130, v129, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v129, v130
.Ltmp94:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v129, v128, v132
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[96:103], v[88:95], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v97, v118 offset:352
	ds_load_u16_d16 v96, v118 offset:96
	ds_load_u16_d16 v98, v118 offset:608
	ds_load_u16_d16 v99, v118 offset:864
	ds_load_u16_d16 v100, v118 offset:1120
	ds_load_u16_d16 v101, v118 offset:1376
	ds_load_u16_d16 v102, v118 offset:1632
	ds_load_u16_d16 v103, v118 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v118 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v118 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v118 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v118 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v118 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v118 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v118 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v118 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[96:103], v[88:95], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v88, v118 offset:2048
	ds_load_u16_d16 v90, v118 offset:2560
	ds_load_u16_d16 v91, v118 offset:2816
	ds_load_u16_d16 v92, v118 offset:3072
	ds_load_u16_d16 v93, v118 offset:3328
	ds_load_u16_d16 v94, v118 offset:3584
	ds_load_u16_d16 v95, v118 offset:3840
	ds_load_u16_d16 v89, v118 offset:2304
	ds_load_u16_d16 v96, v118 offset:2080
	ds_load_u16_d16 v97, v118 offset:2336
	ds_load_u16_d16 v98, v118 offset:2592
	ds_load_u16_d16 v99, v118 offset:2848
	ds_load_u16_d16 v100, v118 offset:3104
	ds_load_u16_d16 v101, v118 offset:3360
	ds_load_u16_d16 v102, v118 offset:3616
	ds_load_u16_d16 v103, v118 offset:3872
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v88, v118 offset:2176
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v90, v118 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v91, v118 offset:2944
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v92, v118 offset:3200
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v93, v118 offset:3456
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v94, v118 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v95, v118 offset:3968
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v118 offset:2432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[88:95], v[80:87], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v88, v118 offset:2112
	ds_load_u16_d16 v89, v118 offset:2368
	ds_load_u16_d16 v90, v118 offset:2624
	ds_load_u16_d16 v91, v118 offset:2880
	ds_load_u16_d16 v92, v118 offset:3136
	ds_load_u16_d16 v93, v118 offset:3392
	ds_load_u16_d16 v94, v118 offset:3648
	ds_load_u16_d16 v95, v118 offset:3904
	ds_load_u16_d16_hi v96, v118 offset:2208
	ds_load_u16_d16_hi v97, v118 offset:2464
	ds_load_u16_d16_hi v98, v118 offset:2720
	ds_load_u16_d16_hi v99, v118 offset:2976
	ds_load_u16_d16_hi v100, v118 offset:3232
	ds_load_u16_d16_hi v101, v118 offset:3488
	ds_load_u16_d16_hi v102, v118 offset:3744
	ds_load_u16_d16_hi v103, v118 offset:4000
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[96:103], v[80:87], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v96, v118 offset:2144
	ds_load_u16_d16 v97, v118 offset:2400
	ds_load_u16_d16 v98, v118 offset:2656
	ds_load_u16_d16 v99, v118 offset:2912
	ds_load_u16_d16 v100, v118 offset:3168
	ds_load_u16_d16 v101, v118 offset:3424
	ds_load_u16_d16 v102, v118 offset:3680
	ds_load_u16_d16 v103, v118 offset:3936
	ds_load_u16_d16_hi v88, v118 offset:2240
	ds_load_u16_d16_hi v89, v118 offset:2496
	ds_load_u16_d16_hi v90, v118 offset:2752
	ds_load_u16_d16_hi v91, v118 offset:3008
	ds_load_u16_d16_hi v92, v118 offset:3264
	ds_load_u16_d16_hi v93, v118 offset:3520
	ds_load_u16_d16_hi v94, v118 offset:3776
	ds_load_u16_d16_hi v95, v118 offset:4032
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[88:95], v[80:87], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v88, v118 offset:4096
	ds_load_u16_d16 v90, v118 offset:4608
	ds_load_u16_d16 v91, v118 offset:4864
	ds_load_u16_d16 v92, v118 offset:5120
	ds_load_u16_d16 v93, v118 offset:5376
	ds_load_u16_d16 v94, v118 offset:5632
	ds_load_u16_d16 v95, v118 offset:5888
	ds_load_u16_d16 v89, v118 offset:4352
	ds_load_u16_d16_hi v96, v118 offset:2272
	ds_load_u16_d16_hi v97, v118 offset:2528
	ds_load_u16_d16_hi v98, v118 offset:2784
	ds_load_u16_d16_hi v99, v118 offset:3040
	ds_load_u16_d16_hi v100, v118 offset:3296
	ds_load_u16_d16_hi v101, v118 offset:3552
	ds_load_u16_d16_hi v102, v118 offset:3808
	ds_load_u16_d16_hi v103, v118 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[96:103], v[80:87], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v82, v118 offset:4160
	ds_load_u16_d16 v83, v118 offset:4416
	ds_load_u16_d16 v96, v118 offset:4192
	ds_load_u16_d16_hi v88, v118 offset:4224
	ds_load_u16_d16_hi v90, v118 offset:4736
	ds_load_u16_d16_hi v91, v118 offset:4992
	ds_load_u16_d16_hi v92, v118 offset:5248
	ds_load_u16_d16_hi v93, v118 offset:5504
	ds_load_u16_d16_hi v94, v118 offset:5760
	ds_load_u16_d16_hi v95, v118 offset:6016
	ds_load_u16_d16_hi v89, v118 offset:4480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[88:95], v[72:79], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v133, v118 offset:4128
	ds_load_u16_d16 v134, v118 offset:4384
	ds_load_u16_d16 v135, v118 offset:4640
	ds_load_u16_d16 v136, v118 offset:4896
	ds_load_u16_d16 v137, v118 offset:5152
	ds_load_u16_d16 v138, v118 offset:5408
	ds_load_u16_d16 v139, v118 offset:5664
	ds_load_u16_d16 v140, v118 offset:5920
	ds_load_u16_d16 v84, v118 offset:4672
	ds_load_u16_d16 v85, v118 offset:4928
	ds_load_u16_d16 v86, v118 offset:5184
	ds_load_u16_d16 v87, v118 offset:5440
	ds_load_u16_d16 v88, v118 offset:5696
	ds_load_u16_d16 v89, v118 offset:5952
	ds_load_u16_d16 v97, v118 offset:4448
	ds_load_u16_d16 v98, v118 offset:4704
	ds_load_u16_d16 v99, v118 offset:4960
	ds_load_u16_d16 v100, v118 offset:5216
	ds_load_u16_d16 v101, v118 offset:5472
	ds_load_u16_d16 v102, v118 offset:5728
	ds_load_u16_d16 v80, v118 offset:6208
	ds_load_u16_d16 v103, v118 offset:5984
	ds_load_u16_d16 v81, v118 offset:6464
	ds_load_u16_d16_hi v82, v118 offset:4288
	ds_load_u16_d16_hi v83, v118 offset:4544
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v84, v118 offset:4800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v85, v118 offset:5056
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v86, v118 offset:5312
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v87, v118 offset:5568
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v88, v118 offset:5824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v89, v118 offset:6080
	ds_load_u16_d16_hi v133, v118 offset:4256
	ds_load_u16_d16_hi v134, v118 offset:4512
	ds_load_u16_d16_hi v135, v118 offset:4768
	ds_load_u16_d16_hi v136, v118 offset:5024
	ds_load_u16_d16_hi v137, v118 offset:5280
	ds_load_u16_d16_hi v138, v118 offset:5536
	ds_load_u16_d16_hi v139, v118 offset:5792
	ds_load_u16_d16_hi v140, v118 offset:6048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[82:89], v[72:79], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v88, v118 offset:6240
	ds_load_u16_d16_hi v96, v118 offset:4320
	ds_load_u16_d16_hi v97, v118 offset:4576
	ds_load_u16_d16_hi v98, v118 offset:4832
	ds_load_u16_d16_hi v99, v118 offset:5088
	ds_load_u16_d16_hi v100, v118 offset:5344
	ds_load_u16_d16_hi v101, v118 offset:5600
	ds_load_u16_d16_hi v102, v118 offset:5856
	ds_load_u16_d16_hi v103, v118 offset:6112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[133:140], v[72:79], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[96:103], v[72:79], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v118 offset:6144
	ds_load_u16_d16 v74, v118 offset:6656
	ds_load_u16_d16 v82, v118 offset:6720
	ds_load_u16_d16 v75, v118 offset:6912
	ds_load_u16_d16 v83, v118 offset:6976
	ds_load_u16_d16 v76, v118 offset:7168
	ds_load_u16_d16 v84, v118 offset:7232
	ds_load_u16_d16 v77, v118 offset:7424
	ds_load_u16_d16 v85, v118 offset:7488
	ds_load_u16_d16 v78, v118 offset:7680
	ds_load_u16_d16 v86, v118 offset:7744
	ds_load_u16_d16 v79, v118 offset:7936
	ds_load_u16_d16 v73, v118 offset:6400
	ds_load_u16_d16 v87, v118 offset:8000
	ds_load_u16_d16 v89, v118 offset:6496
	ds_load_u16_d16 v90, v118 offset:6752
	ds_load_u16_d16 v91, v118 offset:7008
	ds_load_u16_d16 v92, v118 offset:7264
	ds_load_u16_d16 v93, v118 offset:7520
	ds_load_u16_d16 v94, v118 offset:7776
	ds_load_u16_d16 v95, v118 offset:8032
	ds_load_u16_d16 v96, v118 offset:6176
	ds_load_u16_d16 v97, v118 offset:6432
	ds_load_u16_d16 v98, v118 offset:6688
	ds_load_u16_d16 v99, v118 offset:6944
	ds_load_u16_d16 v100, v118 offset:7200
	ds_load_u16_d16 v101, v118 offset:7456
	ds_load_u16_d16 v102, v118 offset:7712
	ds_load_u16_d16 v103, v118 offset:7968
	ds_load_u16_d16_hi v80, v118 offset:6336
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v72, v118 offset:6272
	ds_load_u16_d16_hi v81, v118 offset:6592
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v74, v118 offset:6784
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v82, v118 offset:6848
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v118 offset:7040
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v83, v118 offset:7104
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v76, v118 offset:7296
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v84, v118 offset:7360
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v77, v118 offset:7552
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v85, v118 offset:7616
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v78, v118 offset:7808
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v86, v118 offset:7872
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v79, v118 offset:8064
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v73, v118 offset:6528
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v87, v118 offset:8128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v96, v118 offset:6304
	ds_load_u16_d16_hi v88, v118 offset:6368
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v97, v118 offset:6560
	ds_load_u16_d16_hi v89, v118 offset:6624
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v98, v118 offset:6816
	ds_load_u16_d16_hi v90, v118 offset:6880
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v99, v118 offset:7072
	ds_load_u16_d16_hi v91, v118 offset:7136
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v100, v118 offset:7328
	ds_load_u16_d16_hi v92, v118 offset:7392
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v101, v118 offset:7584
	ds_load_u16_d16_hi v93, v118 offset:7648
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v102, v118 offset:7840
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v103, v118 offset:8096
	ds_load_u16_d16_hi v94, v118 offset:7904
	ds_load_u16_d16_hi v95, v118 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[72:79], v[64:71], v[24:31]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[64:71], v[8:15]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[96:103], v[64:71], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[88:95], v[64:71], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v129, v129, v24
	v_div_scale_f32 v37, null, v129, v129, v25
	v_div_scale_f32 v41, null, v129, v129, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, null, v129, v129, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v40, vcc_lo, v24, v129, v24
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v42, s0, v25, v129, v25
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v37, v39, 1.0
	v_div_scale_f32 v45, s1, v26, v129, v26
	v_fma_f32 v35, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v34, v39
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v48, s3, v27, v129, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v40, v38 :: v_dual_fmac_f32 v44, v35, v44
	v_dual_mul_f32 v49, v42, v39 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, null, v129, v129, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v36, v47, v40
	v_fma_f32 v52, -v37, v49, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v32, 1, v109
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v50, v38 :: v_dual_mul_f32 v50, v45, v44
	v_fmac_f32_e32 v49, v52, v39
	v_div_scale_f32 v52, null, v129, v129, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v47, v40
	v_div_scale_f32 v40, null, v129, v129, v28
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v41, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_rcp_f32_e32 v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v129
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v42, v44
	v_div_fixup_f32 v24, v36, v129, v24
	v_div_fmas_f32 v36, v37, v39, v49
	v_rcp_f32_e32 v37, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_div_fixup_f32 v25, v36, v129, v25
	v_fma_f32 v36, -v41, v50, v45
	v_div_scale_f32 v45, s1, v29, v129, v29
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v51, v37, 1.0
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v129, v129, v30
	v_div_fmas_f32 v36, v36, v44, v50
	v_fmac_f32_e32 v37, v41, v37
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v36, v129, v26
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v49, v41
	v_mul_f32_e32 v47, v48, v46
	v_fma_f32 v39, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v39, v46
	v_div_scale_f32 v39, s4, v28, v129, v28
	v_fma_f32 v43, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v38
	v_div_scale_f32 v48, null, v129, v129, v31
	v_div_fmas_f32 v43, v43, v46, v47
	v_mul_f32_e32 v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v46, -v40, v44, v39
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v27, v43, v129, v27
	v_fma_f32 v36, -v51, v47, v45
	v_fmac_f32_e32 v44, v46, v38
	v_div_scale_f32 v46, null, v129, v129, v16
	v_div_scale_f32 v43, s3, v30, v129, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v36, v37
	v_fma_f32 v39, -v40, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v49, -v48, v50, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v38, v44
	v_fma_f32 v39, -v51, v47, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v38, v129, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v40, 1.0
	v_div_fmas_f32 v37, v39, v37, v47
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v47, s1, v16, v129, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v40
	v_mul_f32_e32 v36, v43, v41
	v_div_fixup_f32 v29, v37, v129, v29
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v47, v40
	v_fma_f32 v44, -v42, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v44, v41
	v_fma_f32 v37, -v42, v36, v43
	v_fma_f32 v42, -v52, v39, 1.0
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s5, v31, v129, v31
	v_div_scale_f32 v43, null, v129, v129, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v45, v49, v50
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v41, -v46, v38, v47
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v48, v45, v49
	v_div_fixup_f32 v30, v36, v129, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v41, v40 :: v_dual_fmac_f32 v45, v44, v50
	v_div_scale_f32 v44, s3, v17, v129, v17
	v_fma_f32 v36, -v46, v38, v47
	v_div_scale_f32 v46, s4, v18, v129, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v48, v45, v49
	v_div_scale_f32 v48, null, v129, v129, v19
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_dual_mul_f32 v45, v44, v39 :: v_dual_fmac_f32 v42, v49, v42
	v_div_scale_f32 v49, null, v129, v129, v20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v37, v129, v31
	v_fma_f32 v37, -v52, v45, v44
	v_div_fmas_f32 v36, v36, v40, v38
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v48, v41, 1.0
	v_div_scale_f32 v40, s1, v19, v129, v19
	v_div_fixup_f32 v16, v36, v129, v16
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_fmac_f32_e32 v45, v37, v39
	v_div_scale_f32 v47, null, v129, v129, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v50, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v52, v45, v44
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v52, -v49, v38, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v45
	v_fma_f32 v39, -v48, v50, v40
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v37, v46, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v36, v129, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v51, 1.0
	v_fmac_f32_e32 v50, v39, v41
	v_fma_f32 v44, -v43, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v129, v129, v22
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v20, v129, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v43, v37, v46
	v_div_scale_f32 v43, s5, v21, v129, v21
	v_mul_f32_e32 v46, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v42, v37
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v37, -v48, v50, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v129, v129, v23
	v_div_fixup_f32 v18, v36, v129, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v41, v50
	v_fma_f32 v41, -v47, v46, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v37, v129, v19
	v_div_scale_f32 v37, s1, v22, v129, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_dual_mul_f32 v39, v44, v38 :: v_dual_fmac_f32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v39, v44
	v_fmac_f32_e32 v39, v40, v38
	v_rcp_f32_e32 v40, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v48, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v49, v39, v44
	v_div_scale_f32 v49, null, v129, v129, v9
	v_div_scale_f32 v41, null, v129, v129, v8
	v_div_fmas_f32 v36, v36, v38, v39
	v_fma_f32 v38, -v47, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, s3, v23, v129, v23
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v51, v46
	v_mul_f32_e32 v39, v37, v42
	v_div_fixup_f32 v20, v36, v129, v20
	v_div_scale_f32 v51, null, v129, v129, v11
	v_div_fixup_f32 v21, v38, v129, v21
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v46, -v45, v39, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v8, v129, v8
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v129, v129, v10
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v9, v129, v9
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v22, v37, v129, v22
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v23, v39, v129, v23
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v10, v129, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v129, v129, v12
	v_div_scale_f32 v39, s3, v11, v129, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v129, v129, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v36, v129, v8
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v9, v38, v129, v9
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v12, v129, v12
	v_div_fixup_f32 v10, v41, v129, v10
	v_div_scale_f32 v41, null, v129, v129, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v13, v129, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v129, v129, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v39, v129, v11
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v129, v129, v1
	v_div_scale_f32 v37, null, v129, v129, v0
	v_div_fixup_f32 v12, v36, v129, v12
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v14, v129, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v15, v129, v15
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v0, v129, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v1, v129, v1
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v38
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v37, v40, 1.0
	v_fma_f32 v42, -v41, v43, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v38, v129, v13
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v129, v129, v2
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v38, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v46, v45, v36
	v_div_fmas_f32 v38, v38, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v42, v48
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v42, -v49, v53, 1.0
	v_mul_f32_e32 v54, v51, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v129, v129, v3
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v2, v129, v2
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v15, v36, v129, v15
	v_div_fixup_f32 v14, v38, v129, v14
	v_div_scale_f32 v47, null, v129, v129, v7
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v37, v129, v0
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v129, v129, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v40, v129, v1
	v_div_scale_f32 v40, null, v129, v129, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v51, s4, v6, v129, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v3, v129, v3
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v36, v129, v2
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v7, v129, v7
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v4, v129, v4
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v129, v129, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v36, v39
	v_mul_f32_e32 v56, v53, v49
	v_mul_f32_e32 v46, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v50, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v43, v46, v41
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s3, v5, v129, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v50, v39
	v_fma_f32 v50, -v40, v55, v51
	v_div_fmas_f32 v41, v41, v45, v46
	v_mul_f32_e32 v54, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v37, v52, v36
	v_fmac_f32_e32 v55, v50, v44
	v_fma_f32 v37, -v47, v56, v53
	v_fma_f32 v43, -v38, v54, v48
	v_div_fixup_f32 v3, v41, v129, v3
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v36, v129, v4
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s88, v108
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s79, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s79, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v129, v5
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v25, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v37, v129, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v24, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v129, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v24, v37, 0x7fff
	v_add3_u32 v24, v25, v38, 0x7fff
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s3
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s3, v27, v27
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s5
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v16, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v16, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v16.l, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v17, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v18, 16, 1
	v_bfe_u32 v30, v19, 16, 1
	v_cmp_o_f32_e64 s3, v17, v17
	v_add3_u32 v26, v17, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v17, v18, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s3
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v26, v21, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s5
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v19, v20, v19, 0x7fff
	v_add3_u32 v20, v21, v26, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s5
	v_bfe_u32 v20, v8, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	v_bfe_u32 v22, v9, 16, 1
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v23, v23
	v_add3_u32 v20, v8, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v8, v9, v22, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s6, v9, v9
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s3
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s5
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v10, v11, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v13, v13
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v13, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v0, 16, 1
	v_bfe_u32 v14, v1, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s6
	v_bfe_u32 v13, v2, 16, 1
	v_add3_u32 v12, v0, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v0, v1, v14, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_add3_u32 v12, v4, v12, 0x7fff
	v_bfe_u32 v13, v6, 16, 1
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v7, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s6
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_add3_u32 v5, v6, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_cndmask_b32_e64 v6, v16, v25, s64
	v_cndmask_b32_e64 v7, v25, v16, s64
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v16, 0x7632
	v_cndmask_b32_e64 v14, v18, v17, s64
	v_cndmask_b32_e64 v17, v17, v18, s64
	v_cndmask_b32_e64 v18, v11, v8, s64
	v_cndmask_b32_e64 v8, v8, v11, s64
	v_cndmask_b32_e64 v11, 0x1054, v15, s64
	v_cndmask_b32_e64 v15, 0x3276, v16, s64
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s6
	v_cndmask_b32_e64 v16, v10, v9, s64
	v_cndmask_b32_e64 v9, v9, v10, s64
	v_lshl_or_b32 v10, v11, 8, v11
	v_lshl_or_b32 v11, v15, 8, v15
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s8
	v_cndmask_b32_e64 v5, v24, v27, s64
	v_cndmask_b32_e64 v12, v19, v28, s64
	v_cndmask_b32_e64 v13, v28, v19, s64
	v_cndmask_b32_e64 v19, v2, v0, s64
	v_cndmask_b32_e64 v0, v0, v2, s64
	v_and_b32_e32 v2, 0x540054, v10
	v_and_b32_e32 v10, 0x760076, v11
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v15, v3, v1, s64
	v_cndmask_b32_e64 v1, v1, v3, s64
	v_permlanex16_b32 v3, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v7, v10, 4, v10
	v_cndmask_b32_e64 v4, v27, v24, s64
	v_permlanex16_b32 v10, v13, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v17, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x5040504, v2
	v_and_b32_e32 v20, 0x7060706, v7
	v_permlanex16_b32 v21, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s79, v35
	v_cmp_gt_i32_e64 s4, s79, v32
	v_cmp_gt_i32_e64 s0, s79, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v4, v17
	v_perm_b32 v1, v3, v4, v20
	v_perm_b32 v2, v5, v6, v17
	v_perm_b32 v3, v5, v6, v20
	v_perm_b32 v4, v10, v12, v17
	v_perm_b32 v5, v10, v12, v20
	v_perm_b32 v6, v11, v14, v17
	v_perm_b32 v7, v11, v14, v20
	v_perm_b32 v8, v13, v18, v17
	v_perm_b32 v10, v21, v16, v17
	v_perm_b32 v12, v22, v19, v17
	v_perm_b32 v14, v23, v15, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v11, v21, v16, v20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v13, v18, v20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v13, v22, v19, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v15, v23, v15, v20
	s_mov_b32 s79, 0x31027000
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[76:79], 0 offen
	buffer_store_b128 v[4:7], v17, s[76:79], 0 offen
	buffer_store_b128 v[8:11], v18, s[76:79], 0 offen
	buffer_store_b128 v[12:15], v19, s[76:79], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp95:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 164
		.amdhsa_next_free_sgpr 97
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 164
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14424
; TotalNumSgprs: 99
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 164
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
