	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v26, 7, v0
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x40
	s_load_b64 s[56:57], s[0:1], 0x0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v25, 3, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v45, 15, v0
	s_mov_b32 s44, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v6, 0x70, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v5, v5, v6
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s4, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s36, s42, v25
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v47, 0, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[41:42], null, s42, v1, v[25:26]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s6, s7, s5
	s_mul_i32 s9, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s9, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s8
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b32 s11, s[0:1], 0x84
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s10, s6, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s6, s6, s54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s10, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s7, s10, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s7, s7, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s7, v41, 1
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s7, s54, 31
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s12, s7, s54
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s36, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s7, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s13, s5, s4
	s_add_i32 s14, s5, 1
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[1:4], v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s7, s7, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s14, s5
	s_cselect_b32 s2, s2, s7
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s4
	s_cselect_b32 s2, s6, s5
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s11, s10
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s5, s9
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s5, s5, 0x800
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s6, 0x800
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s5, s5, 63
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s12, s5, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s41, s2
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s12, s12, 26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s11, s8
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s5, s5, s12
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s12, s6, 31
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s12, s12, 26
	.loc	1 811 18                        ; attention.py:811:18
	v_mov_b32_e32 v6, s5
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s7, s7, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s6, s12
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s10
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s7, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 811 18                        ; attention.py:811:18
	v_min3_i32 v46, s2, s5, v6
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s2, s4, 0x7fffffc0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 807 18 is_stmt 0              ; attention.py:807:18
	s_max_i32 s55, s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_cmp_ge_i32_e32 vcc_lo, s55, v46
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v27, 4, v26
	v_and_b32_e32 v32, 16, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s10, v45
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v28, 0x78, v0
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_mov_b32_e32 v32, 0x7632
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshl_or_b32 v17, v45, 7, v27
	v_dual_mov_b32 v43, 0x5410 :: v_dual_add_nc_u32 v30, s11, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 1, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v42, 1, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v2, 0x50, v17
	v_xor_b32_e32 v1, 64, v17
	v_cndmask_b32_e32 v43, 0x1054, v43, vcc_lo
	v_cndmask_b32_e32 v32, 0x3276, v32, vcc_lo
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s43, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v52, 0, v2
	v_add_nc_u32_e32 v53, 0, v1
	v_lshl_or_b32 v58, v43, 8, v43
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[42:43], null, s43, v42, v[25:26]
	v_lshl_or_b32 v32, v32, 8, v32
	v_and_b32_e32 v43, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v25, 0x540054, v58
	v_bfe_i32 v58, v0, 3, 1
	v_xor_b32_e32 v28, v27, v28
	v_and_b32_e32 v32, 0x760076, v32
	v_lshl_or_b32 v27, v43, 6, v27
	v_lshl_or_b32 v25, v25, 4, v25
	v_and_or_b32 v43, 0x410, v58, v43
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, 16, v17
	v_xor_b32_e32 v10, 48, v17
	v_xor_b32_e32 v3, 0x70, v17
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v58, v26, 10, v28
	v_and_b32_e32 v59, 0x5040504, v25
	v_xor_b32_e32 v25, v43, v27
	v_xor_b32_e32 v9, 32, v17
	v_xor_b32_e32 v4, 0x60, v17
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v29, 4, v0
	v_dual_mov_b32 v43, 0xff800000 :: v_dual_add_nc_u32 v50, 0, v3
	v_and_b32_e32 v60, 0x7060706, v32
	v_xor_b32_e32 v27, 0x90, v58
	v_xor_b32_e32 v28, 0x120, v58
	v_xor_b32_e32 v32, 0x1b0, v58
	v_lshl_or_b32 v61, v26, 7, v25
	v_xor_b32_e32 v26, 0x240, v58
	v_mov_b32_e32 v25, 0
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v31, s9, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v54, 0, v10
	v_add_nc_u32_e32 v56, 0, v18
	v_add_nc_u32_e32 v51, 0, v4
	v_add_nc_u32_e32 v55, 0, v9
	v_add_nc_u32_e32 v57, 0, v17
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v49, s8, v30
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[13:16], v52
	ds_load_b128 v[9:12], v53
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v62, 62, v29
	v_add_nc_u32_e32 v64, 0, v27
	v_add_nc_u32_e32 v65, 0, v28
	v_add_nc_u32_e32 v66, 0, v32
	v_add_nc_u32_e32 v67, 0, v26
	v_mov_b32_e32 v26, v25
	v_min_i32_e32 v63, v30, v31
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v28, v25
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[5:8], v50
	ds_load_b128 v[1:4], v51
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	ds_load_b128 v[21:24], v54
	ds_load_b128 v[17:20], v55
	v_mov_b32_e32 v32, v25
	ds_load_b128 v[37:40], v56
	ds_load_b128 v[33:36], v57
	v_xor_b32_e32 v68, 0x2d0, v58
	v_xor_b32_e32 v69, 0x360, v58
	v_xor_b32_e32 v70, 0x3f0, v58
	v_xor_b32_e32 v71, 16, v61
	v_xor_b32_e32 v72, 32, v61
	v_xor_b32_e32 v73, 48, v61
	v_xor_b32_e32 v74, 64, v61
	v_xor_b32_e32 v75, 0x50, v61
	v_xor_b32_e32 v76, 0x60, v61
	v_xor_b32_e32 v77, 0x70, v61
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v48, v0, 4, 1
	v_add_nc_u32_e32 v68, 0, v68
	v_add_nc_u32_e32 v69, 0, v69
	v_add_nc_u32_e32 v70, 0, v70
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v74, 0, v74
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v76, 0, v76
	v_add_nc_u32_e32 v77, 0, v77
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v78, v25
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s65, s2, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s64, s3, 11
	s_lshl_b32 s66, s42, 4
	s_lshl_b32 s67, s42, 5
	s_mul_i32 s68, s42, 48
	s_lshl_b32 s69, s43, 1
	s_mul_i32 s70, s43, 3
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
	s_mov_b32 s71, 0x76543210
	s_mov_b32 s60, s6
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s2, s55, s64
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v118, s51 :: v_dual_mov_b32 v115, s48
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[79:80], null, s2, s42, v[41:42]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v116, s49 :: v_dual_mov_b32 v113, s46
	v_dual_mov_b32 v114, s47 :: v_dual_mov_b32 v111, s44
	v_dual_mov_b32 v112, s45 :: v_dual_mov_b32 v117, s50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_lshlrev_b32_e32 v80, 1, v79
	v_add_lshl_u32 v81, v79, s66, 1
	v_add_lshl_u32 v82, v79, s67, 1
	v_add_lshl_u32 v79, v79, s68, 1
	v_cndmask_b32_e64 v80, 0x80000000, v80, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v83, 0x80000000, v81, s36
	v_cndmask_b32_e64 v87, 0x80000000, v82, s36
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v91, 0x80000000, v79, s36
	s_clause 0x3
	buffer_load_b128 v[79:82], v80, s[56:59], 0 offen
	buffer_load_b128 v[83:86], v83, s[56:59], 0 offen
	buffer_load_b128 v[87:90], v87, s[56:59], 0 offen
	buffer_load_b128 v[91:94], v91, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v47, v[79:82]
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[83:86] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v47, v[87:90] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[91:94] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v56
	ds_load_b128 v[79:82], v57
	ds_load_b128 v[87:90], v57 offset:2048
	ds_load_b128 v[91:94], v56 offset:2048
	ds_load_b128 v[99:102], v56 offset:4096
	ds_load_b128 v[95:98], v57 offset:4096
	ds_load_b128 v[103:106], v57 offset:6144
	ds_load_b128 v[107:110], v56 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[79:86], v[33:40], v[111:118]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[87:94], v[33:40], v[111:118]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[95:102], v[33:40], v[111:118]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[33:40], v[111:118]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[107:110], v54
	ds_load_b128 v[103:106], v55
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[103:110], v[17:24], v[119:126]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[103:106], v55 offset:2048
	ds_load_b128 v[107:110], v54 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[103:110], v[17:24], v[79:86]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[107:110], v54 offset:4096
	ds_load_b128 v[103:106], v55 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[103:110], v[17:24], v[87:94]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[103:106], v55 offset:6144
	ds_load_b128 v[107:110], v54 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[17:24], v[95:102]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[107:110], v52
	ds_load_b128 v[103:106], v53
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[103:110], v[9:16], v[119:126]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[103:106], v53 offset:2048
	ds_load_b128 v[107:110], v52 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[103:110], v[9:16], v[79:86]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[107:110], v52 offset:4096
	ds_load_b128 v[103:106], v53 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[103:110], v[9:16], v[87:94]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[103:106], v53 offset:6144
	ds_load_b128 v[107:110], v52 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[9:16], v[95:102]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[107:110], v50
	ds_load_b128 v[103:106], v51
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[119:126], v[103:110], v[1:8], v[119:126]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[103:106], v51 offset:2048
	ds_load_b128 v[107:110], v50 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v114, s65, v122 :: v_dual_mul_f32 v115, s65, v123
	v_dual_mul_f32 v116, s65, v124 :: v_dual_mul_f32 v117, s65, v125
	v_mul_f32_e32 v113, s65, v121
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[79:86], v[103:110], v[1:8], v[79:86]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[107:110], v50 offset:4096
	ds_load_b128 v[103:106], v51 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v118, s65, v126 :: v_dual_mul_f32 v111, s65, v80
	v_dual_mul_f32 v112, s65, v81 :: v_dual_mul_f32 v121, s65, v83
	v_dual_mul_f32 v122, s65, v84 :: v_dual_mul_f32 v123, s65, v85
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[87:94], v[103:110], v[1:8], v[87:94]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[103:106], v51 offset:6144
	ds_load_b128 v[107:110], v50 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v124, s65, v86 :: v_dual_mul_f32 v125, s65, v87
	v_dual_mul_f32 v126, s65, v88 :: v_dual_mul_f32 v127, s65, v90
	v_dual_mul_f32 v128, s65, v91 :: v_dual_mul_f32 v131, s65, v94
	v_mul_f32_e32 v129, s65, v92
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[1:8], v[95:102]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v103, s65, v119
	v_mul_f32_e32 v119, s65, v79
	v_mad_u64_u32 v[79:80], null, s2, s43, v[42:43]
	v_mul_f32_e32 v104, s65, v120
	v_mul_f32_e32 v120, s65, v82
	v_mul_f32_e32 v110, s65, v89
	v_mul_f32_e32 v130, s65, v93
	v_dual_mul_f32 v132, s65, v95 :: v_dual_mul_f32 v133, s65, v97
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v80, 1, v79
	v_add_lshl_u32 v81, v79, s69, 1
	v_add_lshl_u32 v82, v79, s70, 1
	v_add_lshl_u32 v79, v79, s43, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v97, s65, v98
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v80, 0x80000000, v80, s1
	v_cndmask_b32_e64 v81, 0x80000000, v81, s1
	v_cndmask_b32_e64 v82, 0x80000000, v82, s1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s1
	s_clause 0x3
	buffer_load_b128 v[88:91], v80, s[60:63], 0 offen
	buffer_load_b128 v[92:95], v81, s[60:63], 0 offen
	buffer_load_b128 v[80:83], v82, s[60:63], 0 offen
	buffer_load_b128 v[84:87], v79, s[60:63], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v106, s65, v99 :: v_dual_mul_f32 v105, s65, v100
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v79, 0, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v109, s55, v48
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v96, s65, v96 :: v_dual_mul_f32 v107, s65, v101
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s39, v63, v109
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v98.l, v88.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v99.l, v92.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v99.h, v80.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v98.h, v84.l
	v_mov_b16_e32 v84.l, v88.h
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v108, s65, v102
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v80.l, v92.h
	v_mov_b16_e32 v88.l, v90.l
	ds_store_b64 v79, v[98:99]
	v_mov_b16_e32 v98.h, v85.l
	v_mov_b32_e32 v79, v84
	v_mov_b16_e32 v85.l, v89.h
	v_mov_b16_e32 v99.l, v93.l
	v_mov_b16_e32 v99.h, v81.l
	v_mov_b16_e32 v98.l, v89.l
	ds_store_b64 v64, v[79:80]
	ds_store_b64 v65, v[98:99]
	v_mov_b16_e32 v81.l, v93.h
	v_mov_b32_e32 v80, v85
	v_mov_b16_e32 v89.l, v94.l
	v_mov_b16_e32 v89.h, v82.l
	v_mov_b16_e32 v88.h, v86.l
	v_mov_b16_e32 v86.l, v90.h
	ds_store_b64 v66, v[80:81]
	ds_store_b64 v67, v[88:89]
	v_mov_b16_e32 v80.h, v83.l
	v_mov_b16_e32 v83.l, v95.h
	v_mov_b16_e32 v82.l, v94.h
	v_mov_b32_e32 v81, v86
	v_mov_b16_e32 v80.l, v95.l
	v_mov_b16_e32 v79.l, v91.l
	v_mov_b16_e32 v79.h, v87.l
	v_mov_b32_e32 v88, v83
	v_mov_b16_e32 v87.l, v91.h
	ds_store_b64 v68, v[81:82]
	ds_store_b64 v69, v[79:80]
	ds_store_b64 v70, v[87:88]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, 52, v109
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s2, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 50, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s5, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 48, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s5, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s7, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 46, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 vcc_lo, s0, s4
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v81, 0xff800000, v96, vcc_lo
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s7, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s9, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 44, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s0, s5
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v132, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s9, s8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s11, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 42, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s0, s6
	s_and_b32 s6, s0, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v131, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s11, s10
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s13, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 40, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v130, s7
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s13, s12
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s15, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 38, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v129, s8
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s15, s14
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s17, v63, v79
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v79, 36, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s0, s9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v85, v82, v83
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v128, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s17, s16
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v79, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s19, v63, v79
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s10, s0, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v133, s6
	v_cndmask_b32_e64 v87, 0xff800000, v127, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_and_b32 s11, s0, s11
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v88, v80, v81, v79
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v110, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v90, v86, v87, v84
	v_max3_f32 v110, v90, v89, v88
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v88, 34, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 32, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s12, s2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 30, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v126, s12
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s14, s13
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 28, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s0, s13
	s_and_b32 s14, s16, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 26, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s0, s14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v124, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s18, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 24, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s0, s15
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v123, s15
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s20, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 22, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s0, s16
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v122, s16
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s22, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 20, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s0, s17
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v121, s17
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s24, s23
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v63, v88
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v88, 18, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s0, s18
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v99, v92, v93, v90
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v120, s18
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s26, s25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v88, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v63, v88
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s19, s0, s19
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v125, s13
	v_cndmask_b32_e64 v94, 0xff800000, v112, s19
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s28, s27
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v109, v49
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s0, s20
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v98, v91, v88, v89
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v111, s20
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s39, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s28, s0, s28
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v100, v96, v94, v95
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v103, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v120, v100, v99, v98
.Ltmp14:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v98, 2, v109
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s21, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 16, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s21, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s23, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 14, v109
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s31, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 12, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s33, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s34, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 10, v109
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s25, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 8, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s25, s24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s27, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 6, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s0, s21
	s_and_b32 s21, s31, s30
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v116, s24
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s27, s26
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v63, v98
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v98, 4, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s0, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v115, s25
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s35, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v98, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s38, v63, v98
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s29, s0, s2
	s_and_b32 s26, s0, s26
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v104, s29
	v_cndmask_b32_e64 v103, 0xff800000, v114, s26
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s38, s37
	s_and_b32 s2, s23, s22
	s_and_b32 s27, s0, s27
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v111, v112
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v113, s27
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v99, v103, v101, v102
.Ltmp18:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s34, s33
	s_and_b32 s22, s0, s21
	s_and_b32 s21, s0, s2
	s_and_b32 s23, s0, s23
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v98, v104, v99
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v119, s21
	v_cndmask_b32_e64 v99, 0xff800000, v117, s23
	v_cndmask_b32_e64 v100, 0xff800000, v118, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v99, v100, v98
	v_max3_f32 v113, v113, v114, v120
	v_or_b32_e32 v114, s55, v62
.Ltmp22:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v114, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v63, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, 60, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s30, s2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v114, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v63, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, 58, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v108, s30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s33, s31
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v114, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v63, v114
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, 56, v109
	v_or_b32_e32 v109, 54, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s0, s2
	s_and_b32 s33, s35, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v114, v49
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s38, v63, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v109, v49
	.loc	1 866 21                        ; attention.py:866:21
	v_cmp_ge_i32_e64 s40, v63, v109
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v107, s31
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s0, s33
	s_and_b32 s34, s38, s37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v105, s33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, s40, s39
	s_and_b32 s34, s0, s34
	s_and_b32 s35, s0, s35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v106, s34
	v_cndmask_b32_e64 v109, 0xff800000, v97, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v97, v107, v108 :: v_dual_max_f32 v114, v109, v106
	v_max3_f32 v97, v114, v105, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v97, v113, v110, v97
	v_mov_b32_e32 v113, v43
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v97, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v43, v113, v97, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v97, v112, v43
	v_sub_f32_e32 v110, v111, v43
	v_sub_f32_e32 v103, v103, v43
	v_sub_f32_e32 v101, v101, v43
	v_sub_f32_e32 v99, v99, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v111, v110
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v99, v99
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v43
	v_sub_f32_e32 v96, v96, v43
	v_sub_f32_e32 v92, v92, v43
	v_sub_f32_e32 v87, v87, v43
	v_sub_f32_e32 v94, v94, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v97, s29
	v_cndmask_b32_e64 v111, 0, v111, s28
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e32 v97.h, 0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v97.l, v110.h
	v_mov_b16_e32 v112.l, v111.h
	v_mov_b16_e32 v112.h, v97.h
	v_cmp_o_f32_e64 s2, v110, v110
	v_cmp_o_f32_e64 s28, v111, v111
	v_and_b32_e32 v114, 1, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v112, 1, v112
	v_mov_b16_e32 v97.l, v103.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v102, v102, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v114, v110, v114, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v112, v111, v112, 0x7fff
	v_and_b32_e32 v116, 1, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v115.h, 0x7fff, v114.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, 0, v104, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v115.l, 0x7fff, v112.h, s28
	v_cmp_o_f32_e64 s2, v103, v103
	v_add3_u32 v116, v103, v116, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v104, v104
	v_permlanex16_b32 v112, v115, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v99, s23
	v_cndmask_b32_e64 v102, 0, v102, s24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v100, v100
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v101, v101
	v_perm_b32 v114, v112, v115, v59
	v_perm_b32 v115, v112, v115, v60
	v_mov_b16_e32 v112.h, v97.h
	v_mov_b16_e32 v112.l, v104.h
	v_mov_b16_e32 v97.l, v102.h
	v_mov_b16_e32 v99.h, v97.h
	v_mov_b16_e64 v99.l, v130.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v112, 1, v112
	v_and_b32_e32 v118, 1, v97
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v100, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v99, 1, v99
	v_cmp_o_f32_e64 s22, v130, v130
	v_add3_u32 v112, v104, v112, 0x7fff
	v_add3_u32 v118, v102, v118, 0x7fff
	v_mov_b16_e32 v97.l, v100.h
	v_add3_u32 v99, v130, v99, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.l, 0x7fff, v112.h, s26
	v_cndmask_b16 v112.h, 0x7fff, v116.h, s2
	v_cmp_o_f32_e64 s2, v102, v102
	v_cndmask_b16 v99.l, 0x7fff, v99.h, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s21
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v117, v112, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v95, v95, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v96, 0, v96, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v98, v98
	v_perm_b32 v116, v117, v112, v59
	v_perm_b32 v117, v117, v112, v60
	v_mov_b16_e32 v112.h, v97.h
	v_mov_b16_e32 v112.l, v101.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v92, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.h, v97.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v95, v95
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v112, 1, v112
	v_mov_b16_e64 v92.l, v131.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v93, v43
	v_sub_f32_e32 v85, v85, v43
	v_sub_f32_e32 v91, v91, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v112, v101, v112, 0x7fff
	v_and_b32_e32 v92, 1, v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v90, v90, v43
	v_sub_f32_e32 v86, v86, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v112.l, 0x7fff, v112.h, s24
	v_cndmask_b16 v112.h, 0x7fff, v118.h, s2
	v_cmp_o_f32_e64 s2, v100, v100
	v_add3_u32 v92, v131, v92, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v90
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v119, v112, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v93, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v131, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v82, v43
	v_sub_f32_e32 v83, v83, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v118, v119, v112, v59
	v_perm_b32 v119, v119, v112, v60
	v_and_b32_e32 v112, 1, v97
	v_mov_b16_e32 v97.l, v96.h
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v82, v82
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v112, v100, v112, 0x7fff
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v130, v100
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v89, v89, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v99.h, 0x7fff, v112.h, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v112, v99, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v120, v112, v99, v59
	v_perm_b32 v121, v112, v99, v60
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v99, v113, v43 :: v_dual_add_nc_u32 v112, 0, v61
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[122:125], v112
	ds_load_b128 v[126:129], v71
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v99, v99
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v112.h, v97.h
	v_mov_b16_e32 v112.l, v98.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v112, 1, v112
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v99, 0, v99, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v96, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v112, v98, v112, 0x7fff
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v98, v98, v96 :: v_dual_mul_f32 v29, v29, v99
.Ltmp29:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v99
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v113.l, 0x7fff, v112.h, s20
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v25, v25, v99 :: v_dual_and_b32 v112, 1, v97
	v_mul_f32_e32 v26, v26, v99
	v_mul_f32_e32 v27, v27, v99
	v_mul_f32_e32 v28, v28, v99
	v_mul_f32_e32 v32, v32, v99
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v112, v96, v112, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v109, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v109, v85
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v87, s10
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v99
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v113.h, 0x7fff, v112.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v80, s4
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v85, v85
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[114:121], v[25:32]
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v94, s19
	v_cndmask_b32_e64 v129, 0, v95, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v94.h, v97.h
	v_permlanex16_b32 v114, v113, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[120:123], v72
	ds_load_b128 v[124:127], v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v94.l, v128.h
	v_mov_b16_e64 v97.l, v129.h
	v_cmp_o_f32_e64 s2, v129, v129
	v_cmp_o_f32_e64 s18, v128, v128
	v_perm_b32 v112, v114, v113, v59
	v_and_b32_e32 v94, 1, v94
	v_and_b32_e32 v95, 1, v97
	v_mov_b16_e64 v97.l, v132.h
	v_perm_b32 v113, v114, v113, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v94, v128, v94, 0x7fff
	v_add3_u32 v95, v129, v95, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v93, 1, v97
	v_cndmask_b16 v94.l, 0x7fff, v94.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v94.h, 0x7fff, v95.h, s2
	v_cmp_o_f32_e64 s2, v132, v132
	v_add3_u32 v93, v132, v93, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v95, v94, s71, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v92.h, 0x7fff, v93.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v114, v95, v94, v59
	v_perm_b32 v115, v95, v94, v60
	v_permlanex16_b32 v93, v92, s71, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v95, v104, v103 :: v_dual_add_f32 v94, v101, v102
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v101, v106, v43
	v_sub_f32_e32 v106, v107, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v116, v93, v92, v59
	v_perm_b32 v117, v93, v92, v60
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v91
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v90, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v90.h, v97.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v102, v128, v129 :: v_dual_sub_f32 v81, v81, v43
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v97.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mov_b16_e32 v90.l, v91.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v104.h, v97.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v90, 1, v90
	v_cmp_o_f32_e64 s14, v91, v91
	v_mov_b16_e32 v97.l, v92.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v92, v92
	v_add3_u32 v90, v91, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v93, 1, v97
	v_cndmask_b16 v90.l, 0x7fff, v90.h, s14
	v_cmp_o_f32_e64 s14, v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v93, v92, v93, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v93.h, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v93, v90, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v118, v93, v90, v59
	v_perm_b32 v119, v93, v90, v60
	v_dual_mov_b32 v90, v78 :: v_dual_add_f32 v93, v111, v110
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v131, v132
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v107, v108, v43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v108, v86
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v89, s12
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[120:127], v[112:119], v[25:32]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v101
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v82, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v78.h, v97.h
	v_mov_b16_e32 v97.l, v86.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, v97.h
	v_mov_b16_e32 v78.l, v101.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v101, v101
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v112, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v78, 1, v78
	v_mov_b16_e32 v110.l, v108.h
	v_cmp_o_f32_e64 s7, v108, v108
	v_cmp_o_f32_e64 s5, v86, v86
	v_cmp_o_f32_e64 s16, v89, v89
	v_add3_u32 v78, v101, v78, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v84, s9
	v_cndmask_b32_e64 v84, 0, v109, s8
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v105, v105, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v109.h, v97.h
	v_mov_b16_e32 v103.l, v114.h
	v_cmp_o_f32_e64 s8, v114, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v103, v114, v103, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v105, s33
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v91, v92
	v_add_f32_e32 v92, v94, v100
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v79, v79, v43 :: v_dual_add_f32 v100, v114, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v111, v105
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v80, v80
	.loc	1 886 33                        ; attention.py:886:33
	v_dual_cndmask_b32 v82, 0, v81 :: v_dual_add_f32 v91, v93, v95
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v93, v98, v102 :: v_dual_add_f32 v98, v101, v83
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v96, s35
	v_cndmask_b32_e64 v96, 0, v106, s31
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v95, v108, v85
	v_add_f32_e32 v98, v100, v98
.Ltmp43:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v88, v43
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v87, v82
	v_dual_add_f32 v91, v91, v92 :: v_dual_add_f32 v92, v93, v94
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.l, v96.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_cmp_o_f32_e64 s17, v96, v96
	v_cmp_o_f32_e64 s12, v82, v82
	v_and_b32_e32 v109, 1, v109
	v_cmp_o_f32_e64 s11, v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v88, s13
	v_cndmask_b32_e64 v88, 0, v79, s6
	v_cndmask_b32_e64 v79, 0, v107, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v107, 1, v110
	v_cmp_o_f32_e64 s13, v83, v83
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v106, v113, v86 :: v_dual_add_f32 v105, v88, v81
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v104.l, v113.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v107, v108, v107, 0x7fff
	v_mov_b16_e32 v108.h, v97.h
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v95, v106, v95 :: v_dual_add_f32 v106, v89, v80
	v_add_f32_e32 v100, v102, v105
	v_add_f32_e32 v102, v96, v79
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.h, v97.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v95, v98
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v95.l, 0x7fff, v78.h, s2
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v91, v92
	v_add_f32_e32 v102, v106, v102
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.l, v87.h
	v_mov_b16_e32 v106.h, v97.h
	v_mov_b16_e32 v106.l, v88.h
	v_mov_b16_e32 v108.l, v89.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v94, v100, v102 :: v_dual_and_b32 v105, 1, v105
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v88, v88
	v_and_b32_e32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v91, v93, v94 :: v_dual_and_b32 v108, 1, v108
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v87, v87, v105, 0x7fff
	v_and_b32_e32 v104, 1, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v88, v88, v106, 0x7fff
	v_add3_u32 v89, v89, v108, 0x7fff
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v91
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v92.l, 0x7fff, v87.h, s14
	v_add3_u32 v96, v96, v109, 0x7fff
	v_cndmask_b16 v94.l, 0x7fff, v88.h, s15
	v_cmp_o_f32_e64 s6, v113, v113
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v91, v78, s71, 0xfedcba98 op_sel:[1,0]
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v104, v113, v104, 0x7fff
	v_cndmask_b16 v96.l, 0x7fff, v89.h, s16
	v_cndmask_b16 v88.l, 0x7fff, v107.h, s7
	v_cndmask_b16 v89.l, 0x7fff, v103.h, s8
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v78, v91 :: v_dual_and_b32 v91, 1, v97
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v97.l, v85.h
	v_cndmask_b16 v87.l, 0x7fff, v104.h, s6
	v_cmp_o_f32_e64 s10, v79, v79
	v_cndmask_b16 v98.l, 0x7fff, v96.h, s17
	v_add3_u32 v86, v86, v91, 0x7fff
	v_and_b32_e32 v91, 1, v97
	v_mov_b16_e32 v97.l, v84.h
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v78, v90, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v87.h, 0x7fff, v86.h, s5
	v_add3_u32 v85, v85, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v86, 1, v97
	v_mov_b16_e32 v97.l, v83.h
	v_permlanex16_b32 v91, v87, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v88.h, 0x7fff, v85.h, s4
	v_add3_u32 v84, v84, v86, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v85, 1, v97
	v_mov_b16_e32 v97.l, v82.h
	v_perm_b32 v100, v91, v87, v59
	v_permlanex16_b32 v86, v88, s71, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v89.h, 0x7fff, v84.h, vcc_lo
	v_add3_u32 v83, v83, v85, 0x7fff
	v_and_b32_e32 v84, 1, v97
	v_mov_b16_e32 v97.l, v81.h
	v_perm_b32 v101, v91, v87, v60
	v_permlanex16_b32 v85, v89, s71, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v95.h, 0x7fff, v83.h, s13
	v_add3_u32 v82, v82, v84, 0x7fff
	v_and_b32_e32 v83, 1, v97
	v_perm_b32 v102, v86, v88, v59
	v_perm_b32 v103, v86, v88, v60
	v_permlanex16_b32 v84, v95, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v104, v85, v89, v59
	v_add3_u32 v81, v81, v83, 0x7fff
	v_perm_b32 v105, v85, v89, v60
	v_cndmask_b16 v92.h, 0x7fff, v82.h, s12
	v_perm_b32 v106, v84, v95, v59
	v_perm_b32 v107, v84, v95, v60
	v_cndmask_b16 v94.h, 0x7fff, v81.h, s11
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v74
	ds_load_b128 v[85:88], v75
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v97.l, v80.h
	v_permlanex16_b32 v93, v92, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_cmp_lt_i32_e32 vcc_lo, s55, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v89, 1, v97
	v_mov_b16_e32 v97.l, v79.h
	.loc	1 818 13                        ; attention.py:818:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v89, v80, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v91, 1, v97
	v_cndmask_b16 v96.h, 0x7fff, v89.h, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v95, v79, v91, 0x7fff
	v_perm_b32 v91, v93, v92, v59
	v_perm_b32 v92, v93, v92, v60
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[100:107], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[79:82], v76
	ds_load_b128 v[83:86], v77
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v98.h, 0x7fff, v95.h, s10
	v_permlanex16_b32 v87, v94, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v88, v96, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v89, v98, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v93, v87, v94, v59
	v_perm_b32 v94, v87, v94, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_perm_b32 v95, v88, v96, v59
	v_perm_b32 v96, v88, v96, v60
	v_perm_b32 v97, v89, v98, v59
	v_perm_b32 v98, v89, v98, v60
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[79:86], v[91:98], v[25:32]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v43, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v29, v32
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v27, v32
	v_mov_b32_e32 v26, v32
	v_mov_b32_e32 v25, v32
	v_mov_b32_e32 v78, v32
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v43 :: v_dual_cndmask_b32 v4, 0, v25
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v26 :: v_dual_cndmask_b32 v12, 0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v30 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v78, vcc_lo
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v27
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp68:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v28 :: v_dual_cndmask_b32 v14, 0, v31
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v32
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp72:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp75:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp97:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp107:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
	v_add_f32_e32 v15, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp128:
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
.Ltmp129:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp131:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp135:
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
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp137:
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
.Ltmp138:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 134
		.amdhsa_next_free_sgpr 72
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 134
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 72
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7908
; TotalNumSgprs: 74
; NumVgprs: 134
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 74
; NumVGPRsForWavesPerEU: 134
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
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
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     74
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     134
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
