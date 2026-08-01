	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s50, s[0:1], 0x64
	s_load_b64 s[38:39], s[0:1], 0x5c
	s_load_b64 s[52:53], s[0:1], 0x0
	s_load_b64 s[48:49], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_load_b32 s12, s[0:1], 0x88
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v46, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v45, 1, v0
	s_mov_b32 s40, 0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v3, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s38, v3
	.loc	1 798 32                        ; attention.py:798:32
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
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s53, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s14, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s50
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s13, s14, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s14, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v4, s13, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s37, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v4, s38, v[3:4]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s50, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s50
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	s_mul_i32 s9, s6, s5
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b32 v4, v3, s[52:55], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s4, s4, s9
	s_add_i32 s10, s6, 1
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s12, s14
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s4, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
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
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v5, v43, v5, 0
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 18 is_stmt 0              ; attention.py:811:18
	s_min_i32 s64, s2, s4
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s51, s64
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v5, s14, v46
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s13, v46, 1
	v_lshlrev_b32_e32 v50, 4, v0
	v_dual_mov_b32 v12, 0x7632 :: v_dual_and_b32 v7, 24, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v5
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v49, 0x800, v2
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_add_nc_u32 v3, 0, v3
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v33, 4, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v13, v46, 5, v7
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v48, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v84, v46, 1, v3
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s65, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v14, 16, v13
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v69, 38, v48
	v_or_b32_e32 v70, 40, v48
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s9, 0xffff
	s_mov_b32 s52, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v9, v4, s[52:55], 0 offen
	v_dual_mov_b32 v11, 0x5410 :: v_dual_lshlrev_b32 v4, 3, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v10, 16, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v82, s12, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[34:35], null, s39, v2, v[4:5]
	v_mov_b32_e32 v5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s2, 0, v10
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v85, 0, v13
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s39, v4
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v99, 0, v14
	v_cndmask_b32_e64 v10, 0x1054, v11, s2
	v_cndmask_b32_e64 v12, 0x3276, v12, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v11, 8, v13
	v_xor_b32_e32 v13, 24, v13
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_mov_b32 v109, v1 :: v_dual_add_nc_u32 v98, 0, v11
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v8, 24, v0
	v_lshl_or_b32 v11, v12, 8, v12
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v71, 42, v48
	v_or_b32_e32 v72, 44, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v83, v50, v8
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v11, 0x760076, v11
	v_or_b32_e32 v73, 46, v48
	v_or_b32_e32 v74, 48, v48
	v_or_b32_e32 v75, 50, v48
	v_or_b32_e32 v76, 52, v48
	v_or_b32_e32 v77, 54, v48
	v_or_b32_e32 v78, 56, v48
	v_or_b32_e32 v79, 58, v48
	v_or_b32_e32 v80, 60, v48
	v_xor_b32_e32 v15, 8, v83
	v_lshl_or_b32 v11, v11, 4, v11
	v_lshrrev_b32_e32 v47, 1, v0
	v_or_b32_e32 v51, 2, v48
	v_or_b32_e32 v52, 4, v48
	v_or_b32_e32 v53, 6, v48
	v_or_b32_e32 v54, 8, v48
	v_or_b32_e32 v55, 10, v48
	v_or_b32_e32 v56, 12, v48
	v_or_b32_e32 v57, 14, v48
	v_or_b32_e32 v58, 16, v48
	v_or_b32_e32 v59, 18, v48
	v_or_b32_e32 v60, 20, v48
	v_or_b32_e32 v61, 22, v48
	v_or_b32_e32 v62, 24, v48
	v_or_b32_e32 v63, 26, v48
	v_or_b32_e32 v64, 28, v48
	v_or_b32_e32 v65, 30, v48
	v_or_b32_e32 v66, 32, v48
	v_or_b32_e32 v67, 34, v48
	v_or_b32_e32 v68, 36, v48
	v_or_b32_e32 v81, 62, v6
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s38, v33
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v101, 0, v15
	v_mov_b32_e32 v7, v1
	v_or_b32_e32 v86, s65, v69
	v_or_b32_e32 v87, s65, v70
	v_or_b32_e32 v88, s65, v71
	v_or_b32_e32 v89, s65, v72
	v_or_b32_e32 v90, s65, v73
	v_or_b32_e32 v91, s65, v74
	v_or_b32_e32 v92, s65, v75
	v_or_b32_e32 v93, s65, v76
	v_or_b32_e32 v94, s65, v77
	v_or_b32_e32 v95, s65, v78
	v_or_b32_e32 v96, s65, v79
	v_or_b32_e32 v97, s65, v80
	v_and_b32_e32 v104, 0x7060706, v11
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s66, s39, 4
	s_lshl_b32 s67, s39, 5
	s_mul_i32 s68, s39, 48
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s10
	s_mov_b32 s60, s6
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s57, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v102, s2, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v107, v102 :: v_dual_and_b32 v10, 0x540054, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 4, v10
	v_and_b32_e32 v103, 0x5040504, v10
	v_dual_mov_b32 v105, v102 :: v_dual_add_nc_u32 v100, 0, v13
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[35:36], v85
	ds_load_b64 v[37:38], v98
	ds_load_b64 v[39:40], v99
	ds_load_b64 v[41:42], v100
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v106, v102
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s2, s51, s65
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v18, 0x800, v47
	v_or_b32_e32 v21, s65, v48
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v130, s2, v47
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v110, s51, v48
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[19:20], null, s2, s39, v[34:35]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s5, s51, v18
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v18, v21, s51, 1
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[20:21], null, v130, s38, v[33:34]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v131, s2, v81, 1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s2, 0x800, v110
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s4, s51, v49
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s5, s0, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v21, 1, v19
	v_add_lshl_u32 v130, v19, s66, 1
	v_add_lshl_u32 v132, v19, s67, 1
	v_add_lshl_u32 v19, v19, s68, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v146, 0x80000000, v18, s2
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v20, s5
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s4, s1, s4
	v_or_b32_e32 v22, s65, v51
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v151, 0x80000000, v21, s4
	v_cndmask_b32_e64 v193, 0x80000000, v19, s4
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v18, s[52:55], 0 offen
	v_or_b32_e32 v23, s65, v52
	v_or_b32_e32 v24, s65, v53
	v_or_b32_e32 v25, s65, v54
	v_or_b32_e32 v26, s65, v55
	v_or_b32_e32 v27, s65, v56
	v_or_b32_e32 v28, s65, v57
	v_or_b32_e32 v29, s65, v58
	v_or_b32_e32 v30, s65, v59
	v_or_b32_e32 v31, s65, v60
	v_or_b32_e32 v32, s65, v61
	v_add_nc_u32_e32 v17, 0, v83
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v22, v22, s51, 1
	v_add_lshl_u32 v23, v23, s51, 1
	v_add_lshl_u32 v24, v24, s51, 1
	v_add_lshl_u32 v25, v25, s51, 1
	v_add_lshl_u32 v26, v26, s51, 1
	v_add_lshl_u32 v27, v27, s51, 1
	v_add_lshl_u32 v28, v28, s51, 1
	v_add_lshl_u32 v29, v29, s51, 1
	v_add_lshl_u32 v30, v30, s51, 1
	v_add_lshl_u32 v31, v31, s51, 1
	v_add_lshl_u32 v32, v32, s51, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s40 :: v_dual_mov_b32 v12, s43
	v_mov_b32_e32 v10, s41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v147, 0x80000000, v22, s2
	v_cndmask_b32_e64 v148, 0x80000000, v23, s2
	v_cndmask_b32_e64 v149, 0x80000000, v24, s2
	v_cndmask_b32_e64 v150, 0x80000000, v25, s2
	v_cndmask_b32_e64 v167, 0x80000000, v26, s2
	v_cndmask_b32_e64 v168, 0x80000000, v27, s2
	v_cndmask_b32_e64 v169, 0x80000000, v28, s2
	v_cndmask_b32_e64 v170, 0x80000000, v29, s2
	v_cndmask_b32_e64 v171, 0x80000000, v30, s2
	v_cndmask_b32_e64 v172, 0x80000000, v31, s2
	v_cndmask_b32_e64 v173, 0x80000000, v32, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v111, s65, v62
	v_or_b32_e32 v112, s65, v63
	v_or_b32_e32 v113, s65, v64
	v_or_b32_e32 v114, s65, v65
	v_or_b32_e32 v115, s65, v66
	v_or_b32_e32 v116, s65, v67
	v_or_b32_e32 v117, s65, v68
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s42 :: v_dual_mov_b32 v14, s45
	v_dual_mov_b32 v13, s44 :: v_dual_mov_b32 v16, s47
	v_mov_b32_e32 v15, s46
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v118, v86, s51, 1
	v_add_lshl_u32 v119, v87, s51, 1
	v_add_lshl_u32 v120, v88, s51, 1
	v_add_lshl_u32 v121, v89, s51, 1
	v_add_lshl_u32 v122, v90, s51, 1
	v_add_lshl_u32 v123, v91, s51, 1
	v_add_lshl_u32 v124, v92, s51, 1
	v_add_lshl_u32 v125, v93, s51, 1
	v_add_lshl_u32 v126, v94, s51, 1
	v_add_lshl_u32 v127, v95, s51, 1
	v_add_lshl_u32 v128, v96, s51, 1
	v_add_lshl_u32 v129, v97, s51, 1
	v_add_lshl_u32 v111, v111, s51, 1
	v_add_lshl_u32 v112, v112, s51, 1
	v_add_lshl_u32 v113, v113, s51, 1
	v_add_lshl_u32 v114, v114, s51, 1
	v_add_lshl_u32 v115, v115, s51, 1
	v_add_lshl_u32 v116, v116, s51, 1
	v_add_lshl_u32 v117, v117, s51, 1
	v_cndmask_b32_e64 v174, 0x80000000, v111, s2
	v_cndmask_b32_e64 v175, 0x80000000, v112, s2
	v_cndmask_b32_e64 v176, 0x80000000, v113, s2
	v_cndmask_b32_e64 v177, 0x80000000, v114, s2
	v_cndmask_b32_e64 v178, 0x80000000, v115, s2
	v_cndmask_b32_e64 v179, 0x80000000, v116, s2
	v_cndmask_b32_e64 v143, 0x80000000, v117, s2
	v_cndmask_b32_e64 v144, 0x80000000, v118, s2
	v_cndmask_b32_e64 v145, 0x80000000, v119, s2
	v_cndmask_b32_e64 v180, 0x80000000, v120, s2
	v_cndmask_b32_e64 v181, 0x80000000, v121, s2
	v_cndmask_b32_e64 v182, 0x80000000, v122, s2
	v_cndmask_b32_e64 v183, 0x80000000, v123, s2
	v_cndmask_b32_e64 v184, 0x80000000, v124, s2
	v_cndmask_b32_e64 v185, 0x80000000, v125, s2
	v_cndmask_b32_e64 v186, 0x80000000, v126, s2
	v_cndmask_b32_e64 v187, 0x80000000, v127, s2
	v_cndmask_b32_e64 v188, 0x80000000, v128, s2
	v_cndmask_b32_e64 v189, 0x80000000, v129, s2
	v_cndmask_b32_e64 v190, 0x80000000, v131, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v191, 0x80000000, v130, s4
	v_cndmask_b32_e64 v192, 0x80000000, v132, s4
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v110, v82
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s70, vcc_lo, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, 0
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v101, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[17:20], v85 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v85 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[25:28], v98 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v98 offset1:1
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s70
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[17:18], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[23:24], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[21:22], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v99 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v99 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[21:24], v151, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[27:28], v[37:38], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[25:26], v[37:38], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[29:30], v[37:38], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[31:32], v[37:38], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[11:12], v[39:40], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[9:10], v[39:40], v[127:134] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v100 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[13:14], v[39:40], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[15:16], v[39:40], v[135:142] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v100 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[9:10], v[41:42], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[11:12], v[41:42], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[15:16], v[41:42], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[13:14], v[41:42], v[127:134] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v111
	v_cvt_f32_i32_e32 v26, v112
	v_cvt_f32_i32_e32 v27, v114
	v_cvt_f32_i32_e32 v28, v113
	v_cvt_f32_i32_e32 v29, v117
	v_cvt_f32_i32_e32 v30, v118
	v_cvt_f32_i32_e32 v31, v115
	v_cvt_f32_i32_e32 v32, v116
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v111, v122
	v_cvt_f32_i32_e32 v112, v123
	v_cvt_f32_i32_e32 v113, v125
	v_cvt_f32_i32_e32 v114, v124
	v_cvt_f32_i32_e32 v115, v126
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v116, v127
	v_cvt_f32_i32_e32 v161, v129
	v_cvt_f32_i32_e32 v162, v130
	v_cvt_f32_i32_e32 v163, v131
	v_cvt_f32_i32_e32 v164, v132
	v_cvt_f32_i32_e32 v165, v133
	v_cvt_f32_i32_e32 v166, v134
	v_cvt_f32_i32_e32 v152, v128
	v_cvt_f32_i32_e32 v156, v136
	v_cvt_f32_i32_e32 v157, v137
	v_cvt_f32_i32_e32 v158, v138
	v_cvt_f32_i32_e32 v159, v139
	v_cvt_f32_i32_e32 v160, v142
	v_cvt_f32_i32_e32 v154, v140
	v_cvt_f32_i32_e32 v155, v141
	v_cvt_f32_i32_e32 v151, v135
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[17:20], v191, s[60:63], 0 offen
	buffer_load_b128 v[13:16], v192, s[60:63], 0 offen
	buffer_load_b128 v[9:12], v193, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v137, v143, s[56:59], 0 offen
	buffer_load_u16 v138, v144, s[56:59], 0 offen
	buffer_load_u16 v139, v145, s[56:59], 0 offen
	buffer_load_u16 v140, v180, s[56:59], 0 offen
	buffer_load_u16 v141, v181, s[56:59], 0 offen
	buffer_load_u16 v142, v182, s[56:59], 0 offen
	buffer_load_u16 v143, v183, s[56:59], 0 offen
	buffer_load_u16 v144, v184, s[56:59], 0 offen
	buffer_load_u16 v145, v185, s[56:59], 0 offen
	buffer_load_u16 v128, v171, s[56:59], 0 offen
	buffer_load_u16 v129, v172, s[56:59], 0 offen
	buffer_load_u16 v130, v173, s[56:59], 0 offen
	buffer_load_u16 v131, v174, s[56:59], 0 offen
	buffer_load_u16 v134, v177, s[56:59], 0 offen
	buffer_load_u16 v135, v178, s[56:59], 0 offen
	buffer_load_u16 v132, v175, s[56:59], 0 offen
	buffer_load_u16 v133, v176, s[56:59], 0 offen
	buffer_load_u16 v136, v179, s[56:59], 0 offen
	buffer_load_u16 v119, v146, s[56:59], 0 offen
	buffer_load_u16 v120, v147, s[56:59], 0 offen
	buffer_load_u16 v122, v149, s[56:59], 0 offen
	buffer_load_u16 v121, v148, s[56:59], 0 offen
	buffer_load_u16 v125, v168, s[56:59], 0 offen
	buffer_load_u16 v126, v169, s[56:59], 0 offen
	buffer_load_u16 v123, v150, s[56:59], 0 offen
	buffer_load_u16 v124, v167, s[56:59], 0 offen
	buffer_load_u16 v127, v170, s[56:59], 0 offen
	buffer_load_u16 v146, v186, s[56:59], 0 offen
	buffer_load_u16 v147, v187, s[56:59], 0 offen
	buffer_load_u16 v149, v189, s[56:59], 0 offen
	buffer_load_u16 v148, v188, s[56:59], 0 offen
	buffer_load_u16 v150, v190, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v169, 0, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v168, v108 :: v_dual_mov_b32 v167, v109
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v102, v31
	v_mul_f32_e32 v111, v102, v111
	v_dual_mul_f32 v25, v102, v25 :: v_dual_mul_f32 v32, v105, v32
	v_dual_mul_f32 v28, v106, v28 :: v_dual_mul_f32 v113, v107, v113
	v_dual_mul_f32 v29, v106, v29 :: v_dual_mul_f32 v112, v105, v112
	v_dual_mul_f32 v114, v106, v114 :: v_dual_mul_f32 v115, v107, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.h, v110.h
	v_mov_b16_e64 v171.h, v110.h
	v_mov_b16_e64 v174.h, v110.h
	v_mov_b16_e64 v178.h, v110.h
	v_mov_b16_e64 v181.h, v110.h
	v_mov_b16_e64 v183.h, v110.h
	v_mov_b16_e32 v109.h, v110.h
	v_mov_b16_e64 v182.h, v110.h
	v_mov_b16_e64 v173.h, v110.h
	v_mov_b16_e64 v175.h, v110.h
	v_mov_b16_e64 v179.h, v110.h
	v_mov_b16_e64 v176.h, v110.h
	v_mov_b16_e64 v177.h, v110.h
	v_mov_b16_e64 v172.h, v110.h
	v_mov_b16_e64 v180.h, v110.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v105, v155
	v_mul_f32_e32 v26, v105, v26
	v_mul_f32_e32 v30, v107, v30
	v_mul_f32_e32 v27, v107, v27
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v169, v[13:16] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v169, v[9:12] offset:6144
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v107, v164
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v169, v[21:24]
	ds_store_b128 v169, v[17:20] offset:2048
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v74
	v_or_b32_e32 v21, s51, v76
	v_or_b32_e32 v22, s51, v75
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v102, v161 :: v_dual_mul_f32 v14, v105, v166
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v71
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v73
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v72
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v68
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v70
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v69
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v65
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v67
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v66
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v62
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v64
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v63
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v59
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v61
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v60
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v56
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v58
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v57
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v53
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v55
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v54
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v81
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v21, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v52
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v22, s51, v51
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v23, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v23, s51, v77
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v10, v105, v162 :: v_dual_mul_f32 v13, v102, v165
	v_dual_mul_f32 v15, v106, v117 :: v_dual_mul_f32 v16, v107, v118
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v117, v102, v151 :: v_dual_lshlrev_b32 v118, 16, v137
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v137, 16, v138
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v138, 16, v139
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v139, 16, v140
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v140, 16, v141
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v21, v82
	v_cmp_le_i32_e64 s30, v22, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v21, s51, v79
	v_or_b32_e32 v22, s51, v78
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v23, v82
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v11, v106, v163
	v_mul_f32_e32 v17, v106, v153
	v_mul_f32_e32 v23, v107, v116
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v116, v105, v152 :: v_dual_lshlrev_b32 v141, 16, v142
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v142, 16, v143
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v140, v13, v140 :: v_dual_mul_f32 v137, v10, v137
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v138, v11, v138 :: v_dual_lshlrev_b32 v143, 16, v144
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v144, 16, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v24, s51, v80
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s36, v21, v82
	v_cmp_le_i32_e64 s35, v22, v82
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v18, v102, v156 :: v_dual_mul_f32 v19, v105, v157
	v_dual_mul_f32 v20, v106, v158 :: v_dual_mul_f32 v21, v107, v159
	v_mul_f32_e32 v22, v106, v160
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v143, v16, v143 :: v_dual_lshlrev_b32 v130, 16, v130
	v_mul_f32_e32 v118, v9, v118
	v_dual_mul_f32 v139, v12, v139 :: v_dual_lshlrev_b32 v128, 16, v128
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v144, v17, v144 :: v_dual_lshlrev_b32 v131, 16, v131
	v_mul_f32_e32 v141, v14, v141
	v_dual_mul_f32 v142, v15, v142 :: v_dual_lshlrev_b32 v129, 16, v129
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v24, v82
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v24, v102, v154 :: v_dual_lshlrev_b32 v135, 16, v135
	v_mul_f32_e32 v130, v20, v130
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v128, v18, v128
	v_dual_mul_f32 v131, v21, v131 :: v_dual_lshlrev_b32 v132, 16, v132
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v129, v19, v129
	v_dual_mul_f32 v134, v22, v134 :: v_dual_lshlrev_b32 v133, 16, v133
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v135, v23, v135
	v_dual_mul_f32 v116, v116, v136 :: v_dual_lshlrev_b32 v121, 16, v121
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v132, v24, v132 :: v_dual_lshlrev_b32 v127, 16, v127
	v_dual_mul_f32 v25, v25, v119 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v108, v133
	v_dual_mul_f32 v31, v31, v123 :: v_dual_lshlrev_b32 v122, 16, v122
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v28, v121
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v117, v117, v127 :: v_dual_lshlrev_b32 v148, 16, v148
	v_mul_f32_e32 v27, v27, v122
	v_dual_mul_f32 v32, v32, v124 :: v_dual_lshlrev_b32 v145, 16, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v146, 16, v147
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v26, v26, v120
	v_dual_mul_f32 v29, v29, v125 :: v_dual_lshlrev_b32 v126, 16, v126
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v147, 16, v149
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v114, v114, v148 :: v_dual_lshlrev_b32 v149, 16, v150
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s70
	s_and_b32 s14, s14, s70
	s_and_b32 s16, s16, s70
	s_and_b32 s17, s17, s70
	s_and_b32 s18, s18, s70
	s_and_b32 s19, s19, s70
	s_and_b32 s23, s23, s70
	s_and_b32 s24, s24, s70
	s_and_b32 s15, s15, s70
	s_and_b32 s26, s26, s70
	s_and_b32 s27, s27, s70
	s_and_b32 s30, s30, s70
	s_and_b32 s25, s25, s70
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v30, v30, v126 :: v_dual_mul_f32 v115, v115, v149
	v_dual_mul_f32 v112, v112, v146 :: v_dual_mul_f32 v111, v111, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, 0xff800000, v108, s15
	v_cndmask_b32_e64 v132, 0xff800000, v132, s17
	v_cndmask_b32_e64 v133, 0xff800000, v135, s14
	v_cndmask_b32_e64 v134, 0xff800000, v134, s16
	v_cndmask_b32_e64 v116, 0xff800000, v116, s13
	v_cndmask_b32_e64 v130, 0xff800000, v130, s19
	v_cndmask_b32_e64 v129, 0xff800000, v129, s23
	v_cndmask_b32_e64 v128, 0xff800000, v128, s24
	v_cndmask_b32_e64 v131, 0xff800000, v131, s18
	v_cndmask_b32_e64 v32, 0xff800000, v32, s25
	v_cndmask_b32_e64 v31, 0xff800000, v31, s26
	v_cndmask_b32_e64 v26, 0xff800000, v26, s30
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v113, v113, v147
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s31
	v_cndmask_b32_e64 v27, 0xff800000, v27, s27
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s2, s5, s70
	s_and_b32 s6, s6, s70
	s_and_b32 s7, s7, s70
	s_and_b32 s8, s8, s70
	s_and_b32 s9, s9, s70
	s_and_b32 s10, s10, s70
	s_and_b32 s11, s11, s70
	s_and_b32 s12, s12, s70
	s_and_b32 s29, s29, s70
	s_and_b32 s21, s21, s70
	s_and_b32 s22, s22, s70
	s_and_b32 s20, s20, s70
	s_and_b32 s28, s28, s70
	s_and_b32 s35, s35, s70
	s_and_b32 s34, s34, s70
	s_and_b32 s33, s33, s70
	s_and_b32 s4, s4, s70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v142, s6
	v_cndmask_b32_e64 v119, 0xff800000, v143, s4
	v_cndmask_b32_e64 v121, 0xff800000, v141, s7
	v_cndmask_b32_e64 v122, 0xff800000, v140, s8
	v_cndmask_b32_e64 v123, 0xff800000, v138, s10
	v_cndmask_b32_e64 v124, 0xff800000, v137, s11
	v_cndmask_b32_e64 v118, 0xff800000, v118, s12
	v_cndmask_b32_e64 v125, 0xff800000, v139, s9
	v_cndmask_b32_e64 v126, 0xff800000, v144, s2
	v_cndmask_b32_e64 v28, 0xff800000, v28, s29
	v_cndmask_b32_e64 v117, 0xff800000, v117, s20
	v_cndmask_b32_e64 v30, 0xff800000, v30, s21
	v_cndmask_b32_e64 v29, 0xff800000, v29, s22
	v_cndmask_b32_e64 v113, 0xff800000, v113, s33
	v_cndmask_b32_e64 v112, 0xff800000, v112, s35
	v_cndmask_b32_e64 v111, 0xff800000, v111, s34
	v_cndmask_b32_e64 v115, 0xff800000, v115, s28
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v137, v134, v133, v116
	v_max3_f32 v138, v128, v129, v130
	v_max3_f32 v139, v131, v132, v127
	v_dual_max_f32 v140, v25, v26 :: v_dual_max_f32 v143, v111, v112
	v_max3_f32 v141, v27, v31, v32
.Ltmp2:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s36, s36, s70
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v118, v124, v123
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v114, s36
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v135, v125, v122, v121
	v_max3_f32 v136, v120, v119, v126
	v_max3_f32 v142, v29, v30, v117
	v_max_f32_e32 v144, v113, v115
	v_max3_f32 v137, v138, v139, v137
	v_max3_f32 v138, v140, v28, v141
	v_max3_f32 v108, v108, v135, v136
.Ltmp6:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v168
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v135, v143, v114, v144
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.h, v110.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v138, v142, v137
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v84
	ds_load_u16_d16 v10, v84 offset:256
	ds_load_u16_d16 v11, v84 offset:512
	ds_load_u16_d16 v12, v84 offset:768
	ds_load_u16_d16 v13, v84 offset:1024
	ds_load_u16_d16 v14, v84 offset:1280
	ds_load_u16_d16 v15, v84 offset:1536
	ds_load_u16_d16 v16, v84 offset:1792
	ds_load_u16_d16 v17, v84 offset:2048
	ds_load_u16_d16 v18, v84 offset:2304
	ds_load_u16_d16 v19, v84 offset:2560
	ds_load_u16_d16 v20, v84 offset:2816
	ds_load_u16_d16 v21, v84 offset:3072
	ds_load_u16_d16 v22, v84 offset:3328
	ds_load_u16_d16 v23, v84 offset:3584
	ds_load_u16_d16 v24, v84 offset:3840
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v136, v108, v135
.Ltmp12:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s51, s64
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v135, v108, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v108, v168, v108, v135
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v108
	v_sub_f32_e32 v127, v127, v108
	v_sub_f32_e32 v123, v123, v108
	v_sub_f32_e32 v119, v119, v108
	v_sub_f32_e32 v27, v27, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v137, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v126, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v119
	v_exp_f32_e32 v27, v27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v108
	v_sub_f32_e32 v121, v121, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s30
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v127, s15
	v_cndmask_b32_e64 v126, 0, v137, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v110.l, v26.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v27, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v174.l, v126.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v140, v121
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v182.l, v154.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v145, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v142, s4
	v_cndmask_b32_e64 v148, 0, v28, s29
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v25, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v157, 1, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v124
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v134, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v108
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v28, v148, v125
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v109.l, v148.h
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v154, v119
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v133, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v118, v118, v108 :: v_dual_and_b32 v109, 1, v109
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v119, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v159, v148, v109, 0x7fff
	v_add3_u32 v109, v154, v157, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mov_b16_e64 v171.l, v25.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v108
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v27, v25, v26
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v133, s14
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v135, v168, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v183.l, v155.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v143, v135
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v135, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v158, 1, v183
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v113
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v143, 0, v143, s5
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v120, v120, v108
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v133, v27, v28 :: v_dual_and_b32 v28, 1, v171
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v120
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v122, v122, v108 :: v_dual_mul_f32 v1, v1, v143
	v_dual_sub_f32 v115, v115, v108 :: v_dual_mul_f32 v2, v2, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v135, s12
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v128, s24
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_cndmask_b32_e64 v152, 0, v129, s23
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v141, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v140, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v112, v112, v108 :: v_dual_mul_f32 v7, v7, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v142, v129, v114
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v139, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v173.l, v127.h
	v_mov_b16_e64 v175.l, v129.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v128, v115
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v154, v154
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v131, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.l, v128.h
	v_and_b32_e32 v154, 1, v173
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v112, s35
	v_cndmask_b32_e64 v112, 0, v147, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v130, s19
	v_cndmask_b32_e64 v130, 0, v144, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v29, v29, v108 :: v_dual_and_b32 v156, 1, v181
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v176.l, v130.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v157, 1, v175
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v143
	v_mul_f32_e32 v8, v8, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v129, v129
	v_cmp_o_f32_e64 s7, v155, v155
	v_add3_u32 v129, v129, v157, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v111, s34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v145, s36
	v_cndmask_b32_e64 v150, 0, v29, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v108
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v144, v130, v113
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v145, v131, v111
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v127, v127
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v148, v148
	v_cmp_o_f32_e64 s2, v26, v26
	v_cmp_o_f32_e64 s30, v130, v130
	v_mov_b16_e64 v172.l, v150.h
	v_cmp_o_f32_e64 s10, v150, v150
	v_cndmask_b16 v109.l, 0x7fff, v159.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v117, s20
	v_cndmask_b32_e64 v117, 0, v136, s11
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v30, v30, v108
	v_sub_f32_e32 v32, v32, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v132, s17
	v_cndmask_b32_e64 v132, 0, v146, s33
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v127, v117
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v116, v116, v108
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v153, v120
	v_add_f32_e32 v27, v132, v112
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.l, v132.h
	v_add3_u32 v127, v127, v154, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v136, v137
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v122, v122
	v_and_b32_e32 v165, 1, v179
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v30, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v108
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v125, v125
	v_cmp_o_f32_e64 s31, v131, v131
	v_mov_b16_e64 v178.l, v151.h
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v30, v150, v123
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v116, s13
	v_cndmask_b32_e64 v116, 0, v138, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v153, v153
	v_add3_u32 v153, v153, v156, 0x7fff
	v_and_b32_e32 v156, 1, v169
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v155, v118
	v_add_f32_e32 v140, v126, v116
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v123, v123
	v_mov_b16_e64 v180.l, v152.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v31, s26
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v31, v151, v122
.Ltmp42:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v137, v138, v139 :: v_dual_add_f32 v138, v140, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.l, v149.h
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v139, v142, v144 :: v_dual_add_f32 v140, v145, v27
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v164, 1, v177
	v_add3_u32 v141, v25, v28, 0x7fff
	v_and_b32_e32 v144, 1, v170
	v_and_b32_e32 v145, 1, v172
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v32, s25
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v152, v121
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v126, v126
	v_add3_u32 v160, v149, v144, 0x7fff
	v_add3_u32 v144, v155, v158, 0x7fff
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v29, v149, v124
	v_add_f32_e32 v135, v31, v32
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v144.l, 0x7fff, v129.h, s29
	v_and_b32_e32 v155, 1, v174
	v_cmp_o_f32_e64 s22, v124, v124
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v29, v30
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v176
	v_and_b32_e32 v29, 1, v110
	v_mov_b16_e32 v110.l, v125.h
	v_add3_u32 v126, v126, v155, 0x7fff
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v133, v133, v134 :: v_dual_add_f32 v134, v135, v136
	v_dual_add_f32 v135, v137, v138 :: v_dual_add_f32 v136, v139, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.l, 0x7fff, v126.h, s25
	v_add3_u32 v142, v26, v29, 0x7fff
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v133, v134
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v130, v130, v158, 0x7fff
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v135, v136
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.l, 0x7fff, v109.h, s6
	v_cndmask_b16 v137.h, 0x7fff, v142.h, s2
	v_cndmask_b16 v137.l, 0x7fff, v141.h, s4
	v_cndmask_b16 v153.l, 0x7fff, v130.h, s30
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v133, v134
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v128, v128
	v_add3_u32 v128, v128, v156, 0x7fff
	v_cndmask_b16 v140.l, 0x7fff, v127.h, s24
	v_permlanex16_b32 v127, v137, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v133, v129, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v110
	v_mov_b16_e32 v110.l, v124.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v25, v84 offset:4096
	ds_load_u16_d16 v26, v84 offset:4352
	ds_load_u16_d16 v27, v84 offset:4608
	ds_load_u16_d16 v28, v84 offset:4864
	ds_load_u16_d16 v29, v84 offset:5120
	ds_load_u16_d16 v30, v84 offset:5376
	ds_load_u16_d16 v31, v84 offset:5632
	ds_load_u16_d16 v32, v84 offset:5888
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v149, v149
	v_add3_u32 v161, v150, v145, 0x7fff
	v_add3_u32 v125, v125, v154, 0x7fff
	v_and_b32_e32 v138, 1, v110
	v_mov_b16_e32 v110.l, v123.h
	v_cndmask_b16 v142.l, 0x7fff, v128.h, s26
	v_add3_u32 v131, v131, v164, 0x7fff
	v_cndmask_b16 v109.h, 0x7fff, v125.h, s21
	v_cndmask_b16 v128.l, 0x7fff, v160.h, s9
	v_and_b32_e32 v126, 1, v110
	v_mov_b16_e32 v110.l, v122.h
	v_cndmask_b16 v130.l, 0x7fff, v161.h, s10
	v_cndmask_b16 v154.l, 0x7fff, v131.h, s31
	v_and_b32_e32 v146, 1, v178
	v_add3_u32 v125, v123, v126, 0x7fff
	v_permlanex16_b32 v126, v109, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v123, v127, v137, v103
	v_and_b32_e32 v147, 1, v180
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.h, 0x7fff, v125.h, s23
	v_perm_b32 v125, v126, v109, v103
	v_perm_b32 v126, v126, v109, v104
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v129, v133
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v120, v120
	v_permlanex16_b32 v133, v130, s69, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s11, v151, v151
	v_cmp_o_f32_e64 s12, v152, v152
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v109, v167, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v124, v124, v138, 0x7fff
	v_perm_b32 v129, v133, v130, v103
	v_perm_b32 v130, v133, v130, v104
	v_add3_u32 v162, v151, v146, 0x7fff
	v_add3_u32 v163, v152, v147, 0x7fff
	v_cndmask_b16 v128.h, 0x7fff, v124.h, s22
	v_perm_b32 v124, v127, v137, v104
	v_and_b32_e32 v127, 1, v110
	v_mov_b16_e32 v110.l, v121.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v145, v84 offset:6144
	ds_load_u16_d16 v146, v84 offset:6400
	ds_load_u16_d16 v147, v84 offset:6656
	ds_load_u16_d16 v148, v84 offset:6912
	ds_load_u16_d16 v149, v84 offset:7168
	ds_load_u16_d16 v150, v84 offset:7424
	ds_load_u16_d16 v151, v84 offset:7680
	ds_load_u16_d16 v152, v84 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v9, v84 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v10, v84 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v11, v84 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v84 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v84 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v84 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v84 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v84 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v84 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v84 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v84 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v84 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v84 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v84 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v84 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v84 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v84 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v84 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v84 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v84 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v84 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v84 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v84 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v84 offset:6016
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v121, v121
	v_cmp_o_f32_e64 s33, v132, v132
	v_add3_u32 v122, v122, v127, 0x7fff
	v_and_b32_e32 v137, 1, v110
	v_mov_b16_e32 v110.l, v120.h
	v_permlanex16_b32 v134, v128, s69, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v132, v132, v165, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v122.h, s27
	v_add3_u32 v121, v121, v137, 0x7fff
	v_and_b32_e32 v122, 1, v110
	v_mov_b16_e32 v110.l, v119.h
	v_perm_b32 v127, v134, v128, v103
	v_perm_b32 v128, v134, v128, v104
	v_cmp_o_f32_e64 s34, v118, v118
	v_add3_u32 v120, v120, v122, 0x7fff
	v_and_b32_e32 v122, 1, v110
	v_mov_b16_e32 v110.l, v118.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[123:130], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v131.l, 0x7fff, v162.h, s11
	v_cndmask_b16 v132.l, 0x7fff, v163.h, s12
	v_add3_u32 v13, v119, v122, 0x7fff
	v_and_b32_e32 v14, 1, v110
	v_mov_b16_e32 v110.l, v117.h
	v_cndmask_b16 v139.l, 0x7fff, v153.h, s13
	v_cndmask_b16 v155.l, 0x7fff, v132.h, s33
	v_cndmask_b16 v132.h, 0x7fff, v121.h, s28
	v_cndmask_b16 v139.h, 0x7fff, v120.h, s19
	v_cndmask_b16 v135.h, 0x7fff, v13.h, s16
	v_add3_u32 v16, v118, v14, 0x7fff
	v_and_b32_e32 v118, 1, v110
	v_mov_b16_e32 v110.l, v116.h
	v_cmp_o_f32_e64 s35, v117, v117
	v_permlanex16_b32 v121, v131, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v132, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v139, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v119, v135, s69, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v117, v117, v118, 0x7fff
	v_and_b32_e32 v118, 1, v110
	v_mov_b16_e32 v110.l, v115.h
	v_perm_b32 v9, v121, v131, v103
	v_perm_b32 v10, v121, v131, v104
	v_perm_b32 v11, v12, v132, v103
	v_perm_b32 v12, v12, v132, v104
	v_perm_b32 v13, v15, v139, v103
	v_perm_b32 v14, v15, v139, v104
	v_cndmask_b16 v136.h, 0x7fff, v16.h, s34
	v_perm_b32 v15, v119, v135, v103
	v_perm_b32 v16, v119, v135, v104
	v_cndmask_b16 v140.h, 0x7fff, v117.h, s35
	v_and_b32_e32 v117, 1, v110
	v_mov_b16_e32 v110.l, v114.h
	v_cmp_o_f32_e64 s20, v116, v116
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v115, v115
	v_cmp_o_f32_e64 s17, v114, v114
	v_and_b32_e32 v14, 1, v110
	v_mov_b16_e32 v110.l, v113.h
	v_add3_u32 v116, v116, v118, 0x7fff
	v_add3_u32 v13, v115, v117, 0x7fff
	v_cmp_o_f32_e64 s15, v113, v113
	v_add3_u32 v17, v114, v14, 0x7fff
	v_and_b32_e32 v16, 1, v110
	v_mov_b16_e32 v110.l, v111.h
	v_cndmask_b16 v136.l, 0x7fff, v144.h, s7
	v_cndmask_b16 v141.h, 0x7fff, v116.h, s20
	v_cndmask_b16 v142.h, 0x7fff, v13.h, s18
	v_cndmask_b16 v144.h, 0x7fff, v17.h, s17
	v_and_b32_e32 v19, 1, v110
	v_mov_b16_e32 v110.l, v112.h
	v_add3_u32 v17, v113, v16, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v145, v84 offset:6272
	ds_load_u16_d16_hi v146, v84 offset:6528
	ds_load_u16_d16_hi v147, v84 offset:6784
	ds_load_u16_d16_hi v148, v84 offset:7040
	ds_load_u16_d16_hi v149, v84 offset:7296
	ds_load_u16_d16_hi v150, v84 offset:7552
	ds_load_u16_d16_hi v151, v84 offset:7808
	ds_load_u16_d16_hi v152, v84 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v111, v111
	v_cmp_o_f32_e64 s5, v112, v112
	v_and_b32_e32 v20, 1, v110
	v_permlanex16_b32 v119, v136, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v140, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v141, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v142, s69, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v19, v111, v19, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v17.h, s15
	v_add3_u32 v17, v112, v20, 0x7fff
	v_perm_b32 v9, v119, v136, v103
	v_perm_b32 v10, v119, v136, v104
	v_perm_b32 v11, v12, v140, v103
	v_perm_b32 v12, v12, v140, v104
	v_perm_b32 v13, v15, v141, v103
	v_perm_b32 v14, v15, v141, v104
	v_perm_b32 v15, v18, v142, v103
	v_perm_b32 v16, v18, v142, v104
	v_cndmask_b16 v154.h, 0x7fff, v19.h, s14
	v_cndmask_b16 v155.h, 0x7fff, v17.h, s5
	v_permlanex16_b32 v18, v144, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v12, v153, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v154, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v155, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v144, v103
	v_perm_b32 v10, v18, v144, v104
	v_perm_b32 v11, v12, v153, v103
	v_perm_b32 v12, v12, v153, v104
	v_perm_b32 v13, v14, v154, v103
	v_perm_b32 v14, v14, v154, v104
	v_perm_b32 v15, v16, v155, v103
	v_perm_b32 v16, v16, v155, v104
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[145:152], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v109, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s50, s50, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s39, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s37, s50
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v108 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v109, vcc_lo
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp66:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp72:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp81:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp82:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp85:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp90:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp99:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp100:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp114:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp132:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp134:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s48, s4
	s_addc_u32 s5, s49, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp138:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v43
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v44
.Ltmp140:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v44
	v_lshlrev_b32_e32 v2, 5, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp142:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
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
.Ltmp143:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 194
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8908
; TotalNumSgprs: 73
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 73
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
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
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
