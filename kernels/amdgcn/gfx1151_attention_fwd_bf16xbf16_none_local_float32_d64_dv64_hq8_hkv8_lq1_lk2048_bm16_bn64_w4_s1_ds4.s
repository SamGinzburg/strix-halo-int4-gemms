	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s54, s[0:1], 0x60
	s_load_b64 s[42:43], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v18, 3, v0
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x40
	s_load_b64 s[56:57], s[0:1], 0x0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v60, 1, v0
	v_lshlrev_b32_e32 v61, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v62, 15, v0
	s_mov_b32 s44, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v6, 0x70, v60
	v_xor_b32_e32 v6, v61, v6
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v63, 0, v6
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v17, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[57:58], null, s42, v18, v[17:18]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v17
	.loc	1 798 32                        ; attention.py:798:32
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
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s10, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s10, v18
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s10, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s8, s4, s42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s8, v57, 1
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b32 s11, s[0:1], 0x84
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s12, s4, s54
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[2:5], v2, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s13, s6, s5
	s_add_i32 s14, s6, 1
	s_sub_i32 s4, s4, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s14, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s9, s11
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s10
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s11, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s12
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s10
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s41, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s6, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s55, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s64, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s55, s64
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v63, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s10, v62
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s43, v17
	v_and_b32_e32 v24, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[58:59], null, s43, v18, v[17:18]
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v20, v62, 7, v1
	v_mov_b32_e32 v17, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s11, v2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 1, v2
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v19, 4, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v21, 16, v20
	v_xor_b32_e32 v22, 32, v20
	v_mov_b32_e32 v18, v17
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v66, s9, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v23, 48, v20
	v_add_nc_u32_e32 v73, 0, v21
	v_mov_b32_e32 v21, 0x5410
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s66, s2, 0x3fb8aa3b
	v_cmp_eq_u32_e64 s2, 0, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v72, 0, v22
	v_mov_b32_e32 v22, 0x7632
	v_xor_b32_e32 v2, 64, v20
	v_xor_b32_e32 v3, 0x70, v20
	v_xor_b32_e32 v4, 0x50, v20
	v_xor_b32_e32 v5, 0x60, v20
	v_add_nc_u32_e32 v74, 0, v20
	v_cndmask_b32_e64 v20, 0x1054, v21, s2
	v_cndmask_b32_e64 v21, 0x3276, v22, s2
	v_add_nc_u32_e32 v67, 0, v3
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v71, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v20, v20, 8, v20
	v_lshl_or_b32 v21, v21, 8, v21
	v_lshlrev_b32_e32 v22, 1, v62
	v_and_b32_e32 v23, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v79, v17 :: v_dual_and_b32 v20, 0x540054, v20
	v_and_b32_e32 v21, 0x760076, v21
	v_dual_mov_b32 v59, 0xff800000 :: v_dual_add_nc_u32 v68, 0, v5
	v_add_nc_u32_e32 v69, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v20, v20, 4, v20
	v_lshl_or_b32 v21, v21, 4, v21
	v_add_nc_u32_e32 v70, 0, v2
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v65, s8, v1
	v_add3_u32 v77, 0, v22, v23
	v_and_b32_e32 v75, 0x5040504, v20
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v78, 62, v19
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v22, v17
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[5:8], v67
	ds_load_b128 v[1:4], v68
	ds_load_b128 v[13:16], v69
	ds_load_b128 v[9:12], v70
	v_and_b32_e32 v76, 0x7060706, v21
	v_mov_b32_e32 v21, v17
	ds_load_b128 v[29:32], v71
	ds_load_b128 v[25:28], v72
	v_mov_b32_e32 v23, v17
	ds_load_b128 v[37:40], v73
	ds_load_b128 v[33:36], v74
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v64, v0, 4, 1
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s65, s3, 11
	s_lshl_b32 s67, s42, 4
	s_lshl_b32 s68, s42, 5
	s_mul_i32 s69, s42, 48
	s_lshl_b32 s70, s43, 4
	s_lshl_b32 s71, s43, 5
	s_mul_i32 s72, s43, 48
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s73, 0x76543210
	s_mov_b32 s60, s6
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s2, s55, s65
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v103, s51 :: v_dual_mov_b32 v102, s50
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s2, s42, v[57:58]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v101, s49 :: v_dual_mov_b32 v100, s48
	v_dual_mov_b32 v99, s47 :: v_dual_mov_b32 v98, s46
	v_dual_mov_b32 v97, s45 :: v_dual_mov_b32 v96, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s67, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s68, 1
	v_add_lshl_u32 v41, v41, s69, 1
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e32 v53, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[56:59], 0 offen
	buffer_load_b128 v[45:48], v45, s[56:59], 0 offen
	buffer_load_b128 v[49:52], v49, s[56:59], 0 offen
	buffer_load_b128 v[53:56], v53, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v63, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v63, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v63, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v63, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v73
	ds_load_b128 v[41:44], v74
	ds_load_b128 v[49:52], v74 offset:2048
	ds_load_b128 v[53:56], v73 offset:2048
	ds_load_b128 v[84:87], v73 offset:4096
	ds_load_b128 v[80:83], v74 offset:4096
	ds_load_b128 v[88:91], v74 offset:6144
	ds_load_b128 v[92:95], v73 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[41:48], v[33:40], v[96:103]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[33:40], v[96:103]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[80:87], v[33:40], v[96:103]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v71
	ds_load_b128 v[80:83], v72
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[88:95], v[33:40], v[96:103]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[80:87], v[25:32], v[104:111]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v72 offset:2048
	ds_load_b128 v[84:87], v71 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[80:87], v[25:32], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v71 offset:4096
	ds_load_b128 v[80:83], v72 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[80:87], v[25:32], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v72 offset:6144
	ds_load_b128 v[84:87], v71 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[25:32], v[112:119]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v69
	ds_load_b128 v[80:83], v70
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[80:87], v[9:16], v[104:111]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v70 offset:2048
	ds_load_b128 v[84:87], v69 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[80:87], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v69 offset:4096
	ds_load_b128 v[80:83], v70 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[80:87], v[9:16], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v70 offset:6144
	ds_load_b128 v[84:87], v69 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[9:16], v[112:119]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v67
	ds_load_b128 v[80:83], v68
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[104:111], v[80:87], v[1:8], v[104:111]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v68 offset:2048
	ds_load_b128 v[84:87], v67 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v90, s66, v104 :: v_dual_mul_f32 v91, s66, v105
	v_dual_mul_f32 v88, s66, v106 :: v_dual_mul_f32 v89, s66, v107
	v_dual_mul_f32 v92, s66, v108 :: v_dual_mul_f32 v93, s66, v109
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[80:87], v[1:8], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v67 offset:4096
	ds_load_b128 v[80:83], v68 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v97, s66, v43 :: v_dual_mul_f32 v98, s66, v44
	v_dual_mul_f32 v99, s66, v45 :: v_dual_mul_f32 v100, s66, v46
	v_dual_mul_f32 v101, s66, v47 :: v_dual_mul_f32 v102, s66, v48
	v_mul_f32_e32 v96, s66, v42
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[80:87], v[1:8], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v68 offset:6144
	ds_load_b128 v[84:87], v67 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v94, s66, v49 :: v_dual_mul_f32 v95, s66, v50
	v_dual_mul_f32 v105, s66, v53 :: v_dual_mul_f32 v106, s66, v54
	v_dual_mul_f32 v103, s66, v51 :: v_dual_mul_f32 v104, s66, v52
	v_dual_mul_f32 v107, s66, v55 :: v_dual_mul_f32 v108, s66, v56
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[112:119], v[80:87], v[1:8], v[112:119]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v87, s66, v41
	v_mad_u64_u32 v[41:42], null, s2, s43, v[58:59]
	v_dual_mul_f32 v85, s66, v110 :: v_dual_mul_f32 v86, s66, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v109, s66, v112 :: v_dual_mul_f32 v110, s66, v113
	v_dual_mul_f32 v111, s66, v114 :: v_dual_add_nc_u32 v112, 0, v61
	v_mul_f32_e32 v80, s66, v115
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v43, v41, s70, 1
	v_add_lshl_u32 v44, v41, s71, 1
	v_add_lshl_u32 v41, v41, s72, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v82, s66, v116 :: v_dual_mul_f32 v81, s66, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	v_cndmask_b32_e64 v45, 0x80000000, v43, s1
	v_cndmask_b32_e64 v49, 0x80000000, v44, s1
	v_cndmask_b32_e64 v53, 0x80000000, v41, s1
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v83, s66, v118 :: v_dual_mul_f32 v84, s66, v119
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v112, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v112, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[53:56] offset:6144
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s55, v64
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 52, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v44, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s39, v44, v66
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 50, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s34, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_and_b32 s34, s0, s34
	s_and_b32 s4, s2, s4
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 48, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s0, s4
	s_and_b32 s2, s5, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 46, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s0, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v110, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s7, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 44, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s0, s6
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v109, s2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s9, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 42, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s11, s12
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 40, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s0, s7
	s_and_b32 s12, s0, s8
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v108, s11
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s13, s14
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 38, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s0, s9
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v107, s12
	v_cndmask_b32_e64 v54, 0xff800000, v106, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s15, s16
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v41, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, 36, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s0, s10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v54, v51, v52
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v105, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s17, s18
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v41, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v41, v66
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s15, s0, s15
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v111, s4
	v_cndmask_b32_e64 v56, 0xff800000, v104, s15
	v_cndmask_b32_e64 v104, 0xff800000, v90, s34
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s19, s20
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v111, v77
	ds_load_u16_d16 v112, v77 offset:256
	ds_load_u16_d16 v113, v77 offset:512
	ds_load_u16_d16 v114, v77 offset:768
	ds_load_u16_d16 v115, v77 offset:1024
	ds_load_u16_d16 v116, v77 offset:1280
	ds_load_u16_d16 v117, v77 offset:1536
	ds_load_u16_d16 v118, v77 offset:1792
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s0, s16
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v45, v42, v43, v41
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v103, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v55, v56, v53
	v_max3_f32 v103, v47, v46, v45
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 34, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 32, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s7
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 30, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s8, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 28, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s10, s17
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 26, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s0, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v95, s17
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s18, s19
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 24, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s0, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v102, s19
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s20, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 22, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s0, s9
	s_and_b32 s21, s0, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v101, s20
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s22, s23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 20, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s0, s18
	s_and_b32 s18, s0, s7
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v99, s22
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s24, s25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 18, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s0, s23
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v94, s18
	v_cndmask_b32_e64 v100, 0xff800000, v100, s21
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s26, s27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v45, v66
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s24, s0, s24
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v98, s23
	v_cndmask_b32_e64 v97, 0xff800000, v97, s24
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v45, v102, v94, v95
.Ltmp8:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s28, s29
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v99, v100, v101
.Ltmp10:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s0, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v96, s25
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v96, v97, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v46, v47, v46, v45
.Ltmp12:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 2, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 16, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 14, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 12, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 10, v44
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 8, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s28, s30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 6, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s0, s7
	s_and_b32 s7, s10, s26
	s_and_b32 s30, s31, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v45, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, 4, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s0, s30
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v92, s30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s35, s36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v45, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v45, v66
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s35, s0, s6
	s_and_b32 s31, s0, s31
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v91, s35
	v_cndmask_b32_e64 v91, 0xff800000, v93, s28
	v_cndmask_b32_e64 v89, 0xff800000, v89, s31
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s37, s38
	s_and_b32 s6, s8, s9
	s_and_b32 s33, s0, s33
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v104, v105
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s33
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v89, v90, v91
.Ltmp16:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s27, s29
	s_and_b32 s27, s0, s7
	s_and_b32 s26, s0, s6
	s_and_b32 s29, s0, s8
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v45, v88, v47
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s26
	v_cndmask_b32_e64 v45, 0xff800000, v85, s29
	v_cndmask_b32_e64 v86, 0xff800000, v86, s27
	v_mov_b32_e32 v92, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v45, v86, v87
	v_max3_f32 v85, v47, v48, v46
	v_or_b32_e32 v46, s55, v78
.Ltmp20:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v46, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v46, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, 60, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s7
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v46, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v46, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, 58, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s8, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v46, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v46, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, 56, v44
	v_or_b32_e32 v44, 54, v44
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s0, s7
	s_and_b32 s8, s10, s36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v46, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v46, v66
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v44, v65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s40, v44, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v84, s6
	v_cndmask_b32_e64 v47, 0xff800000, v83, s7
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s37, s38
	s_and_b32 s8, s0, s8
	s_and_b32 s10, s39, s40
	s_and_b32 s9, s0, s9
	s_and_b32 s10, s0, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v82, s9
	v_cndmask_b32_e64 v50, 0xff800000, v80, s10
	v_cndmask_b32_e64 v49, 0xff800000, v81, s8
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v47, v46
.Ltmp22:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v80, v50, v48
	v_max3_f32 v44, v80, v49, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v85, v103, v44
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v44, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v59, v92, v44, v59
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v105, v59
	v_sub_f32_e32 v80, v104, v59
	v_sub_f32_e32 v45, v45, v59
	v_sub_f32_e32 v86, v86, v59
	v_sub_f32_e32 v43, v43, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v81, v80
	v_exp_f32_e32 v45, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v87, v59
	v_sub_f32_e32 v55, v55, v59
	v_sub_f32_e32 v56, v56, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v54, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v44, s35
	v_cndmask_b32_e64 v81, 0, v81, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.h, 0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v55, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v80.h
	v_mov_b16_e32 v82.l, v81.h
	v_mov_b16_e32 v82.h, v44.h
	v_cmp_o_f32_e64 s34, v80, v80
	v_cmp_o_f32_e64 s35, v81, v81
	v_and_b32_e32 v83, 1, v44
	v_mov_b16_e32 v84.h, v44.h
	v_and_b32_e32 v82, 1, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v83, v80, v83, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v82, v81, v82, 0x7fff
	v_cmp_o_f32_e64 s26, v87, v87
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s34
	v_cmp_o_f32_e64 s16, v55, v55
	v_cndmask_b16 v83.l, 0x7fff, v82.h, s35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s4
	v_cndmask_b32_e64 v56, 0, v56, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v43, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v82, v83, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v52, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v56, v56
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v81, v80
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v48, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v103, v82, v83, v75
	v_perm_b32 v104, v82, v83, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v88, v59
	v_sub_f32_e32 v83, v89, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v88.h, v44.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s13
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v48, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v50, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v54, v54
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v59
	v_sub_f32_e32 v42, v42, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s33
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v83, 0, v83, s31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v52, v52
	v_mov_b16_e32 v84.l, v82.h
	v_mov_b16_e32 v44.l, v83.h
	v_cmp_o_f32_e64 s31, v83, v83
	v_cmp_o_f32_e64 s33, v82, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v81, v82, v83 :: v_dual_and_b32 v84, 1, v84
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v85, 1, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s10
	v_cndmask_b32_e64 v46, 0, v46, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v48, v48
	v_add3_u32 v84, v82, v84, 0x7fff
	v_add3_u32 v85, v83, v85, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v84.l, 0x7fff, v84.h, s33
	v_cndmask_b16 v84.h, 0x7fff, v85.h, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v85, v84, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v46, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v105, v85, v84, v75
	v_perm_b32 v106, v85, v84, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v90, v59
	v_sub_f32_e32 v85, v91, v59
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v77 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v77 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v77 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v77 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v77 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v77 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v117, v77 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v118, v77 offset:1920
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v42, v42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v85, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s30
	v_cndmask_b32_e64 v85, 0, v85, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v88.l, v84.h
	v_mov_b16_e32 v44.l, v85.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s28, v85, v85
	v_cmp_o_f32_e64 s30, v84, v84
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v84, v85
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v88, 1, v88
	v_and_b32_e32 v89, 1, v44
	v_add3_u32 v88, v84, v88, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v85, v89, 0x7fff
	v_cndmask_b16 v88.l, 0x7fff, v88.h, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v89.h, s28
	v_permlanex16_b32 v89, v88, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v107, v89, v88, v75
	v_perm_b32 v108, v89, v88, v76
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v86
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v45, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.h, v44.h
	v_mov_b16_e32 v45.l, v86.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s28, v86, v86
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	v_mov_b16_e32 v44.l, v88.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s27, v88, v88
	v_add3_u32 v45, v86, v45, 0x7fff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v86, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v89, 1, v44
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v89, v88, v89, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v89.h, s27
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v89, v45, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v109, v89, v45, v75
	v_perm_b32 v110, v89, v45, v76
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v45, v92, v59
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v96, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v45, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v45, 0, v45, s27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v89, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v89.h, v44.h
	v_mov_b16_e32 v89.l, v87.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v45
	v_mul_f32_e32 v22, v22, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v119.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v89, 1, v89
	v_cmp_o_f32_e64 s25, v119, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v45 :: v_dual_and_b32 v90, 1, v44
	v_mul_f32_e32 v19, v19, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v89, v87, v89, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v45
	v_mul_f32_e32 v23, v23, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v119, v90, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s26
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v87, v119
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s25
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[111:118], v[103:110], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v111, v77 offset:2048
	ds_load_u16_d16 v112, v77 offset:2304
	ds_load_u16_d16 v113, v77 offset:2560
	ds_load_u16_d16 v114, v77 offset:2816
	ds_load_u16_d16 v115, v77 offset:3072
	ds_load_u16_d16 v116, v77 offset:3328
	ds_load_u16_d16 v117, v77 offset:3584
	ds_load_u16_d16 v118, v77 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v77 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v77 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v77 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v77 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v77 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v77 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v117, v77 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v118, v77 offset:3968
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v90, v89, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v103, v90, v89, v75
	v_perm_b32 v104, v90, v89, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v97, v59
	v_sub_f32_e32 v90, v98, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v90, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v89, s24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v121, 0, v90, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.h, v44.h
	v_mov_b16_e32 v89.l, v120.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v121.h
	v_cmp_o_f32_e64 s23, v121, v121
	v_cmp_o_f32_e64 s24, v120, v120
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v120, v121
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v89, 1, v89
	v_and_b32_e32 v90, 1, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v120, v89, 0x7fff
	v_add3_u32 v90, v121, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s24
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v90, v89, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v105, v90, v89, v75
	v_perm_b32 v106, v90, v89, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v99, v59
	v_sub_f32_e32 v90, v100, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v89, s22
	v_cndmask_b32_e64 v123, 0, v90, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.h, v44.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v89.l, v122.h
	v_mov_b16_e32 v44.l, v123.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s21, v123, v123
	v_cmp_o_f32_e64 s22, v122, v122
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v86, v122, v123 :: v_dual_and_b32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v90, 1, v44
	v_add3_u32 v89, v122, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v90, v123, v90, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s21
	v_permlanex16_b32 v90, v89, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v107, v90, v89, v75
	v_perm_b32 v108, v90, v89, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v101, v59
	v_sub_f32_e32 v90, v102, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v90, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v89, s20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v125, 0, v90, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.h, v44.h
	v_mov_b16_e32 v89.l, v124.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v125.h
	v_cmp_o_f32_e64 s19, v125, v125
	v_cmp_o_f32_e64 s20, v124, v124
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v124, v125
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v89, 1, v89
	v_and_b32_e32 v90, 1, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v124, v89, 0x7fff
	v_add3_u32 v90, v125, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s20
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v90, v89, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v109, v90, v89, v75
	v_perm_b32 v110, v90, v89, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v94, v59
	v_sub_f32_e32 v90, v95, v59
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[111:118], v[103:110], v[17:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v90, v90
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v89, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.h, v44.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v90, s17
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.l, v105.h
	v_cmp_o_f32_e64 s17, v105, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v106.h
	v_cmp_o_f32_e64 s18, v106, v106
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v88, v105, v106 :: v_dual_and_b32 v89, 1, v89
.Ltmp43:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v89, v105, v89, 0x7fff
	v_cndmask_b16 v90.l, 0x7fff, v89.h, s17
	v_and_b32_e32 v89, 1, v44
	v_mov_b16_e32 v44.l, v56.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v53, v53, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v89, v106, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v51, v51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v90.h, 0x7fff, v89.h, s18
	v_permlanex16_b32 v91, v90, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v89, v91, v90, v75
	v_perm_b32 v90, v91, v90, v76
	v_mov_b16_e32 v91.h, v44.h
	v_mov_b16_e32 v91.l, v55.h
	v_cmp_o_f32_e64 s14, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v91, v55, v91, 0x7fff
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v92.l, 0x7fff, v91.h, s16
	v_and_b32_e32 v91, 1, v44
	v_mov_b16_e32 v44.l, v54.h
	v_add3_u32 v91, v56, v91, 0x7fff
	v_mov_b16_e32 v56.h, v44.h
	v_mov_b16_e32 v56.l, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v92.h, 0x7fff, v91.h, s15
	v_and_b32_e32 v56, 1, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v93, v92, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v91, v93, v92, v75
	v_perm_b32 v92, v93, v92, v76
	v_mov_b16_e32 v93.h, v44.h
	v_mov_b16_e32 v93.l, v53.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v93, 1, v93
	v_add3_u32 v93, v53, v93, 0x7fff
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v94.l, 0x7fff, v93.h, s14
	v_and_b32_e32 v93, 1, v44
	v_mov_b16_e32 v44.l, v52.h
	v_add3_u32 v93, v54, v93, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v54, v80, v81
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.h, v44.h
	v_mov_b16_e32 v80.l, v41.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v94.h, 0x7fff, v93.h, s13
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v95, v94, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v93, v95, v94, v75
	v_perm_b32 v94, v95, v94, v76
	v_mov_b16_e32 v95.h, v44.h
	v_mov_b16_e32 v95.l, v51.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v95, 1, v95
	v_add3_u32 v95, v51, v95, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v96.l, 0x7fff, v95.h, s12
	v_and_b32_e32 v95, 1, v44
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v95, v52, v95, 0x7fff
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v51, v52
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp51:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_mov_b32_e32 v51, v79
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v82, v83
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v82.h, v44.h
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v86, v87
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v82.l, v48.h
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v81, v84, v85 :: v_dual_add_f32 v84, v42, v43
	v_dual_add_f32 v85, v41, v50 :: v_dual_add_f32 v54, v54, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s7
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v79, v81, v83 :: v_dual_and_b32 v82, 1, v82
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v96.h, 0x7fff, v95.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v84, v84, v85 :: v_dual_add_f32 v85, v47, v46
	v_add_f32_e32 v52, v53, v52
	v_add_f32_e32 v54, v54, v79
.Ltmp61:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v49, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v97, v96, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v88, v55
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v56, 0x7fff
	v_cmp_o_f32_e64 s7, v50, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v95, v97, v96, v75
	v_perm_b32 v96, v97, v96, v76
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v97, v77 offset:4096
	ds_load_u16_d16 v98, v77 offset:4352
	ds_load_u16_d16 v99, v77 offset:4608
	ds_load_u16_d16 v100, v77 offset:4864
	ds_load_u16_d16 v101, v77 offset:5120
	ds_load_u16_d16 v102, v77 offset:5376
	ds_load_u16_d16 v103, v77 offset:5632
	ds_load_u16_d16 v104, v77 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v77 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v77 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v77 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v77 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v77 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v77 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v77 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v77 offset:6016
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s8
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v55, v52
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v41, v41
	v_add3_u32 v41, v41, v80, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s6
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v48, v49
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v49, v49
	v_cmp_o_f32_e64 s4, v47, v47
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s8
	v_add3_u32 v48, v48, v82, 0x7fff
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v85
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v85.h, v44.h
	v_mov_b16_e32 v85.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s10
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v84, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v85, 1, v85
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[89:96], v[17:24]
.Ltmp72:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v53
.Ltmp73:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v88, v77 offset:6144
	ds_load_u16_d16 v89, v77 offset:6400
	ds_load_u16_d16 v90, v77 offset:6656
	ds_load_u16_d16 v91, v77 offset:6912
	ds_load_u16_d16 v92, v77 offset:7168
	ds_load_u16_d16 v93, v77 offset:7424
	ds_load_u16_d16 v94, v77 offset:7680
	ds_load_u16_d16 v95, v77 offset:7936
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v47, v85, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v88, v77 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v89, v77 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v90, v77 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v91, v77 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v92, v77 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v77 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v77 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v77 offset:8064
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v79, v52, v53 :: v_dual_and_b32 v52, 1, v44
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v50.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v79, v51, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v43, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v53, 1, v44
	v_mov_b16_e32 v44.l, v49.h
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v50, v53, 0x7fff
	v_and_b32_e32 v52, 1, v44
	v_mov_b16_e32 v44.l, v46.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v50, v41, s73, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v42.h, 0x7fff, v43.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v49, v49, v52, 0x7fff
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v80, v50, v41, v75
	v_perm_b32 v81, v50, v41, v76
	v_cndmask_b16 v48.h, 0x7fff, v49.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v46, v44, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v47.h, s4
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v82, v43, v42, v75
	v_perm_b32 v83, v43, v42, v76
	v_permlanex16_b32 v42, v48, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v41, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v84, v42, v48, v75
	v_perm_b32 v85, v42, v48, v76
	v_perm_b32 v86, v43, v41, v75
	v_perm_b32 v87, v43, v41, v76
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[88:95], v[80:87], v[17:24]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v59, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v79, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v62
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v59 :: v_dual_cndmask_b32 v4, 0, v17
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v18 :: v_dual_cndmask_b32 v12, 0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v22 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v79, vcc_lo
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v19
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp82:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v20 :: v_dual_cndmask_b32 v14, 0, v23
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v24
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp86:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp89:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp111:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp121:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
	v_add_f32_e32 v15, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp142:
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
.Ltmp143:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp145:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp147:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp149:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp150:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp151:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v60
	v_and_b32_e32 v1, 28, v60
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
	v_cmp_gt_i32_e32 vcc_lo, s43, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp152:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 126
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 126
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8224
; TotalNumSgprs: 76
; NumVgprs: 126
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 126
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     126
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
