	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s21, s[0:1], 0x84
	s_load_b32 s50, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v32, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v89, 16, v2
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s51, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s20, v32
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s20, s51
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v102, 16, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x200, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s30, 0, v102
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[90:91], null, s50, v32, v[89:90]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s50, v89
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s20, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s20, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s21
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s50, s8, v[90:91]
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 32
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s21
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s68, s10, 0x7fffffe0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 27
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[15:18], v1, s[12:15], 0 offen
	v_and_or_b32 v6, v4, 30, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s69, s9, s11
	s_mov_b32 s9, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s69, s69, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_lshlrev_b32_e32 v103, 2, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v14, v32, 16, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v105, 4, v103
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s20, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v19
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v6, v103, v15
	ds_bpermute_b32 v7, v103, v16
	ds_bpermute_b32 v8, v103, v17
	ds_bpermute_b32 v10, v103, v18
	ds_bpermute_b32 v9, v105, v15
	ds_bpermute_b32 v11, v105, v16
	ds_bpermute_b32 v12, v105, v17
	ds_bpermute_b32 v13, v105, v18
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v16, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v15, 0x1054, v15, s30
	v_cndmask_b32_e64 v16, 0x3276, v16, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 8, v15
	v_lshl_or_b32 v16, v16, 8, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v16, 0x760076, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 4, v15
	v_lshl_or_b32 v16, v16, 4, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v100, 0x5040504, v15
	v_and_b32_e32 v101, 0x7060706, v16
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s39, s[0:1], 0x64
	v_or_b32_e32 v104, s8, v14
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v14, 1, v104
	v_or_b32_e32 v119, s51, v3
	v_mov_b32_e32 v3, 0x5410
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	v_dual_mov_b32 v36, 0x7632 :: v_dual_lshlrev_b32 v15, 3, v0
	v_dual_mov_b32 v38, 0x7531 :: v_dual_add_nc_u32 v5, s21, v5
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v39, 2, v32
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 3, v0
	v_dual_mov_b32 v72, 0xff800000 :: v_dual_and_b32 v33, 56, v15
	v_cndmask_b32_e64 v42, 0x1054, v3, s30
	v_cndmask_b32_e64 v43, 0x3276, v36, s30
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v37, 0x6420
	buffer_load_u16 v34, v14, s[52:55], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v14, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v118, 0x3f0, v2
	s_add_i32 s0, s3, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	v_mov_b32_e32 v26, v24
	v_mov_b32_e32 v31, v24
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v0, 24, v0
	v_mov_b32_e32 v121, 0xff800000
	v_dual_cndmask_b32 v40, 0x7632, v3 :: v_dual_lshlrev_b32 v41, 6, v14
	v_cndmask_b32_e32 v36, 0x5410, v36, vcc_lo
	v_cndmask_b32_e32 v37, 0x7531, v37, vcc_lo
	v_cndmask_b32_e32 v38, 0x6420, v38, vcc_lo
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v2, 24, v4
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v123, s6, v5
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s0, 3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v33
	v_lshl_or_b32 v40, v40, 8, v40
	v_lshl_or_b32 v36, v36, 8, v36
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	v_mul_lo_u32 v32, s19, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v106, 7, v89
	v_or_b32_e32 v107, 6, v89
	v_or_b32_e32 v108, 5, v89
	v_or_b32_e32 v109, 4, v89
	v_or_b32_e32 v110, 11, v89
	v_or_b32_e32 v111, 10, v89
	v_or_b32_e32 v112, 9, v89
	v_or_b32_e32 v113, 8, v89
	v_or_b32_e32 v114, 15, v89
	v_or_b32_e32 v115, 14, v89
	v_or_b32_e32 v116, 13, v89
	v_or_b32_e32 v117, 12, v89
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v92, v10, v13, s30
	v_cndmask_b32_e64 v91, v8, v12, s30
	v_cndmask_b32_e64 v94, v7, v11, s30
	v_cndmask_b32_e64 v96, v13, v10, s30
	v_cndmask_b32_e64 v95, v12, v8, s30
	v_cndmask_b32_e64 v98, v11, v7, s30
	v_xor_b32_e32 v124, v118, v0
	v_lshl_or_b32 v125, v1, 5, v2
	v_mov_b32_e32 v20, v24
	v_dual_mov_b32 v11, v24 :: v_dual_and_b32 v36, 0x760032, v36
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v38, 0x750031, v38
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v37, 0x750031, v37
	v_and_or_b32 v126, v39, 60, v41
	v_and_b32_e32 v39, 0x760032, v40
	v_lshl_add_u32 v120, v1, 1, 0
	v_dual_mov_b32 v29, v24 :: v_dual_add_nc_u32 v122, s7, v5
	v_mov_b32_e32 v1, v24
	v_xor_b32_e32 v44, 8, v124
	v_xor_b32_e32 v45, 8, v125
	v_xor_b32_e32 v46, 16, v125
	v_xor_b32_e32 v47, 24, v125
	v_lshl_or_b32 v39, v39, 4, v39
	v_lshl_or_b32 v36, v36, 4, v36
	v_lshl_or_b32 v37, v37, 4, v37
	v_lshl_or_b32 v38, v38, 4, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v140, v32, v89
	v_add_nc_u32_e32 v141, v32, v109
	v_add_nc_u32_e32 v142, v32, v108
	v_add_nc_u32_e32 v143, v32, v107
	v_add_nc_u32_e32 v144, v32, v106
	v_add_nc_u32_e32 v145, v32, v113
	v_add_nc_u32_e32 v146, v32, v112
	v_add_nc_u32_e32 v147, v32, v111
	v_add_nc_u32_e32 v148, v32, v110
	v_add_nc_u32_e32 v149, v32, v117
	v_add_nc_u32_e32 v150, v32, v116
	v_add_nc_u32_e32 v151, v32, v115
	v_add_nc_u32_e32 v152, v32, v114
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v93, v6, v9, s30
	v_cndmask_b32_e64 v97, v9, v6, s30
	v_dual_mov_b32 v28, v24 :: v_dual_mov_b32 v127, v123
	v_dual_mov_b32 v30, v24 :: v_dual_mov_b32 v129, v123
	v_dual_mov_b32 v16, v24 :: v_dual_mov_b32 v131, v122
	v_dual_mov_b32 v18, v24 :: v_dual_mov_b32 v133, v122
	v_dual_mov_b32 v19, v24 :: v_dual_mov_b32 v128, v123
	v_dual_mov_b32 v21, v24 :: v_dual_mov_b32 v130, v122
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v134, 0, v44
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v136, 0, v46
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v135, 0, v45
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v137, 0, v47
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v139, 0x7060302, v39
	v_dual_mov_b32 v3, v24 :: v_dual_and_b32 v154, 0x7050301, v37
	v_dual_mov_b32 v4, v24 :: v_dual_and_b32 v153, 0x7060302, v36
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v156, 3, v140
	v_dual_mov_b32 v6, v24 :: v_dual_and_b32 v155, 0x7050301, v38
	v_dual_mov_b32 v7, v24 :: v_dual_mov_b32 v158, 0xff800000
	v_xor_b32_e32 v138, 64, v126
	s_mov_b32 s40, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s7, s19, s20
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s74, s1, s6
	s_lshl_b32 s70, s39, 3
	s_lshl_b32 s71, s39, 4
	s_mul_i32 s72, s39, 24
	s_mov_b32 s73, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s61, s15
	s_add_i32 s74, s74, s7
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[99:100], null, s39, v35, v[33:34]
	v_lshl_or_b32 v33, v42, 8, v42
	v_lshl_or_b32 v35, v43, 8, v43
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v8, v24
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v32, 16, v34
	v_and_b32_e32 v33, 0x540054, v33
	v_dual_mov_b32 v132, v24 :: v_dual_and_b32 v35, 0x760076, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v157, s3, v32
	v_lshl_or_b32 v33, v33, 4, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v35, v35, 4, v35
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v2, v24
	v_and_b32_e32 v100, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v101, 0x7060706, v35
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s1, s68, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, s68, v110
	v_or_b32_e32 v53, s68, v109
	v_or_b32_e32 v55, s68, v115
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[58:59], null, s1, s50, v[90:91]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v48, s68, v112
	v_or_b32_e32 v52, s68, v108
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v42, 3, v89
	v_or_b32_e32 v43, 2, v89
	v_or_b32_e32 v44, 1, v89
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, s68, v89
	v_or_b32_e32 v47, s68, v111
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v61, 1, v140
	v_add_nc_u32_e32 v62, 2, v140
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v46, v129
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v46, v133
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v53, v123
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v53, v122
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v55, v128
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v55, v131
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s8, s74, s68
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v48, v127
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v48, v130
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v52, v127
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v52, v130
	v_mad_u64_u32 v[59:60], null, s1, s39, v[99:100]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v60, s8, v140, 1
	v_add_lshl_u32 v80, s8, v156, 1
	v_add_lshl_u32 v81, s8, v145, 1
	v_add_lshl_u32 v82, s8, v146, 1
	v_add_lshl_u32 v83, s8, v147, 1
	v_add_lshl_u32 v84, s8, v148, 1
	v_add_lshl_u32 v85, s8, v141, 1
	v_add_lshl_u32 v86, s8, v142, 1
	v_add_lshl_u32 v87, s8, v143, 1
	v_add_lshl_u32 v88, s8, v144, 1
	v_add_lshl_u32 v159, s8, v149, 1
	v_add_lshl_u32 v160, s8, v150, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v45, v123
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v45, v122
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v45, s8, v151, 1
	v_add_lshl_u32 v46, s8, v152, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s68, v42
	v_or_b32_e32 v43, s68, v43
	v_or_b32_e32 v44, s68, v44
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v61, s8, v61, 1
	v_add_lshl_u32 v62, s8, v62, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v47, v128
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v47, v131
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v47, 0x80000000, v58, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s7
	s_and_b32 s7, s20, s21
	s_and_b32 s24, s24, s25
	s_and_b32 s10, s10, s11
	s_and_b32 s11, s18, s19
	s_and_b32 s19, s4, s7
	s_and_b32 s7, s4, s24
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v42, v129
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v42, v133
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v43, v128
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v43, v131
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v44, v127
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v44, v130
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v173, 0x80000000, v45, s7
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[42:45], v47, s[52:55], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v54, s68, v114
	v_or_b32_e32 v49, s68, v113
	v_or_b32_e32 v50, s68, v106
	v_or_b32_e32 v51, s68, v107
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v40, 0, v124
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v54, v129
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v54, v133
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v49, v123
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v49, v122
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v50, v129
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v50, v133
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v51, v128
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v51, v131
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s40 :: v_dual_add_nc_u32 v41, 0, v125
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s8, s9
	s_and_b32 s22, s22, s23
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s12, s13
	s_and_b32 s12, s16, s17
	s_and_b32 s17, s14, s15
	s_and_b32 s15, s4, s10
	s_and_b32 s10, s4, s8
	s_and_b32 s8, s4, s22
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v174, 0x80000000, v46, s8
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v57, s68, v117
	v_or_b32_e32 v56, s68, v116
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s42 :: v_dual_mov_b32 v35, s43
	v_dual_mov_b32 v36, s44 :: v_dual_mov_b32 v37, s45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v57, v123
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v57, v122
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v38, s46 :: v_dual_mov_b32 v39, s47
	v_or_b32_e32 v63, 2, v119
	v_or_b32_e32 v64, 4, v119
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s28, s29
	v_or_b32_e32 v66, 6, v119
	v_or_b32_e32 v67, 8, v119
	v_or_b32_e32 v68, 10, v119
	v_or_b32_e32 v69, 12, v119
	v_or_b32_e32 v70, 14, v119
	v_or_b32_e32 v71, 16, v119
	v_or_b32_e32 v73, 18, v119
	v_or_b32_e32 v74, 20, v119
	v_or_b32_e32 v75, 22, v119
	v_or_b32_e32 v76, 24, v119
	v_or_b32_e32 v77, 26, v119
	v_or_b32_e32 v78, 28, v119
	v_or_b32_e32 v79, 30, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v56, v127
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v56, v130
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, s4, s1
	s_and_b32 s20, s4, s11
	s_and_b32 s1, s4, s18
	s_and_b32 s11, s34, s35
	s_and_b32 s18, s31, s33
	s_and_b32 s16, s4, s3
	s_and_b32 s13, s4, s6
	s_and_b32 s14, s4, s12
	s_and_b32 s21, s4, s17
	s_and_b32 s12, s4, s11
	s_and_b32 s11, s4, s18
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v48, v63, s68, 1
	v_add_lshl_u32 v49, v64, s68, 1
	v_add_lshl_u32 v50, v66, s68, 1
	v_add_lshl_u32 v51, v67, s68, 1
	v_add_lshl_u32 v52, v68, s68, 1
	v_add_lshl_u32 v53, v69, s68, 1
	v_add_lshl_u32 v54, v70, s68, 1
	v_add_lshl_u32 v55, v71, s68, 1
	v_add_lshl_u32 v56, v73, s68, 1
	v_add_lshl_u32 v57, v74, s68, 1
	v_add_lshl_u32 v66, v75, s68, 1
	v_add_lshl_u32 v67, v76, s68, 1
	v_add_lshl_u32 v68, v77, s68, 1
	v_add_lshl_u32 v69, v78, s68, 1
	v_add_lshl_u32 v70, v79, s68, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v58, 1, v59
	v_add_lshl_u32 v63, v59, s70, 1
	v_add_lshl_u32 v64, v59, s71, 1
	v_add_lshl_u32 v59, v59, s72, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v71, 0x80000000, v81, s16
	v_cndmask_b32_e64 v161, 0x80000000, v82, s15
	v_cndmask_b32_e64 v162, 0x80000000, v83, s10
	v_cndmask_b32_e64 v163, 0x80000000, v84, s13
	v_cndmask_b32_e64 v168, 0x80000000, v85, s19
	v_cndmask_b32_e64 v169, 0x80000000, v86, s20
	v_cndmask_b32_e64 v170, 0x80000000, v87, s14
	v_cndmask_b32_e64 v171, 0x80000000, v88, s21
	v_cndmask_b32_e64 v165, 0x80000000, v80, s11
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s27
	s_and_b32 s3, s36, s37
	s_and_b32 s6, s4, s26
	s_and_b32 s17, s4, s3
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v172, 0x80000000, v160, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v58, s0
	v_cndmask_b32_e64 v164, 0x80000000, v63, s0
	v_cndmask_b32_e64 v175, 0x80000000, v64, s0
	v_cndmask_b32_e64 v176, 0x80000000, v59, s0
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v58, 0x80000000, v61, s17
	v_cndmask_b32_e64 v59, 0x80000000, v62, s12
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s68, v119, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v60, 0x80000000, v60, s9
	v_cndmask_b32_e64 v159, 0x80000000, v159, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v72
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s68, s68, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v40, v[42:43]
	ds_store_b64 v134, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[40:43], v41 offset1:1
	ds_load_2addr_stride64_b64 v[44:47], v135 offset1:1
	ds_load_2addr_stride64_b64 v[61:64], v137 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[40:41], v[97:98], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[42:43], v[97:98], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v136 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[44:45], v[95:96], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[46:47], v[95:96], v[81:88] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v44, v65, s[60:63], 0 offen
	buffer_load_u16 v45, v48, s[60:63], 0 offen
	buffer_load_u16 v40, v49, s[60:63], 0 offen
	buffer_load_u16 v41, v50, s[60:63], 0 offen
	buffer_load_u16 v46, v51, s[60:63], 0 offen
	buffer_load_u16 v47, v52, s[60:63], 0 offen
	buffer_load_u16 v38, v53, s[60:63], 0 offen
	buffer_load_u16 v39, v54, s[60:63], 0 offen
	buffer_load_u16 v48, v55, s[60:63], 0 offen
	buffer_load_u16 v49, v56, s[60:63], 0 offen
	buffer_load_u16 v42, v57, s[60:63], 0 offen
	buffer_load_u16 v43, v66, s[60:63], 0 offen
	buffer_load_u16 v50, v67, s[60:63], 0 offen
	buffer_load_u16 v51, v68, s[60:63], 0 offen
	buffer_load_u16 v36, v69, s[60:63], 0 offen
	buffer_load_u16 v37, v70, s[60:63], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_u16 v60, v60, s[56:59], 0 offen
	buffer_load_u16 v65, v58, s[56:59], 0 offen
	buffer_load_u16 v52, v59, s[56:59], 0 offen
	buffer_load_u16 v55, v165, s[56:59], 0 offen
	buffer_load_u16 v53, v71, s[56:59], 0 offen
	buffer_load_u16 v56, v161, s[56:59], 0 offen
	buffer_load_u16 v54, v162, s[56:59], 0 offen
	buffer_load_u16 v57, v163, s[56:59], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[32:33], v[93:94], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[34:35], v[93:94], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[61:62], v[91:92], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[63:64], v[91:92], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v66, v73
	v_cvt_f32_i32_e32 v67, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v76
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v70, v83
	v_cvt_f32_i32_e32 v71, v84
	v_cvt_f32_i32_e32 v76, v85
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[160:163], v160, s[64:67], 0 offen
	buffer_load_b128 v[164:167], v164, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_u16 v82, v168, s[56:59], 0 offen
	buffer_load_u16 v84, v169, s[56:59], 0 offen
	buffer_load_u16 v83, v170, s[56:59], 0 offen
	buffer_load_u16 v85, v171, s[56:59], 0 offen
	buffer_load_u16 v78, v159, s[56:59], 0 offen
	buffer_load_u16 v80, v172, s[56:59], 0 offen
	buffer_load_u16 v79, v173, s[56:59], 0 offen
	buffer_load_u16 v81, v174, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[168:171], v175, s[64:67], 0 offen
	buffer_load_b128 v[32:35], v176, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v68, v77
	v_cvt_f32_i32_e32 v77, v86
	v_cvt_f32_i32_e32 v58, v87
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v159, 0, v118
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v75
	v_cvt_f32_i32_e32 v59, v88
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v157, v76
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	ds_store_b128 v159, v[160:163]
	s_waitcnt vmcnt(10)
	ds_store_b128 v159, v[164:167] offset:1024
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v165.h, 0xff80, v65.l, s17
	v_cndmask_b16 v165.l, 0xff80, v60.l, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v166, v157, v66
	v_mul_f32_e32 v163, v157, v73
	v_mul_f32_e32 v73, v157, v77
	v_mul_f32_e32 v66, v157, v58
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v58.h, 0xff80, v55.l, s11
	v_cndmask_b16 v58.l, 0xff80, v52.l, s12
	v_cndmask_b16 v77.h, 0xff80, v56.l, s15
	v_cndmask_b16 v77.l, 0xff80, v53.l, s16
	v_cndmask_b16 v57.h, 0xff80, v57.l, s13
	v_cndmask_b16 v57.l, 0xff80, v54.l, s10
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v82.h, 0xff80, v84.l, s20
	v_cndmask_b16 v82.l, 0xff80, v82.l, s19
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v83.h, 0xff80, v85.l, s21
	v_cndmask_b16 v83.l, 0xff80, v83.l, s14
	v_mov_b16_e32 v86.l, v75.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, v157, v67
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v159, v[168:171] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v159, v[32:35] offset:3072
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v162, v157, v74
	v_mul_f32_e32 v159, v157, v68
	v_dual_mul_f32 v161, v157, v69 :: v_dual_lshlrev_b32 v84, 16, v44
	v_dual_mul_f32 v69, v157, v61 :: v_dual_lshlrev_b32 v54, 16, v46
	v_mul_f32_e32 v68, v157, v71
	v_mul_f32_e32 v34, v157, v63
	v_dual_mul_f32 v61, v157, v64 :: v_dual_lshlrev_b32 v50, 16, v50
	v_dual_mul_f32 v64, v157, v59 :: v_dual_lshlrev_b32 v63, 16, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v49
	v_lshlrev_b32_e32 v55, 16, v47
	v_lshlrev_b32_e32 v45, 16, v42
	v_lshlrev_b32_e32 v42, 16, v38
	v_lshlrev_b32_e32 v38, 16, v39
	v_lshlrev_b32_e32 v39, 16, v36
	v_lshlrev_b32_e32 v36, 16, v37
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v37, v58, v165, v139
	v_perm_b32 v46, v58, v165, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v86.h, v58.l
	v_mov_b16_e32 v58.l, v75.l
	v_mov_b16_e64 v75.h, v165.l
	v_mov_b16_e64 v165.l, v75.l
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v47, v57, v77, v139
	v_perm_b32 v49, v57, v77, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v87.h, v57.l
	v_mov_b16_e32 v57.l, v75.l
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v71, v83, v82, v139
	v_perm_b32 v74, v83, v82, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v88.h, v83.l
	v_mov_b16_e32 v83.l, v75.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v58
	v_cmp_neq_f32_e64 s18, 0xff800000, v86
	v_cmp_neq_f32_e64 s22, 0xff800000, v165
	v_cmp_neq_f32_e64 s23, 0xff800000, v75
	v_cmp_neq_f32_e64 s24, 0xff800000, v57
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v75.h, v77.l
	v_mov_b16_e32 v77.l, v75.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v83
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v57, v103, v37
	ds_bpermute_b32 v58, v105, v46
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v87.l, v75.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, s11, s3
	s_and_b32 s12, s12, s18
	s_and_b32 s17, s17, s22
	s_and_b32 s18, s9, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v77
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s13, s24
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v75
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v75.h, v82.l
	v_mov_b16_e32 v82.l, v75.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s21, s26
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v157, v62
	v_dual_mul_f32 v67, v157, v70 :: v_dual_lshlrev_b32 v62, 16, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v51
	v_lshlrev_b32_e32 v48, 16, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v40.h, 0xff80, v80.l, s6
	v_cndmask_b16 v40.l, 0xff80, v78.l, s1
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v78, v103, v47
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s11
	v_cndmask_b32_e64 v47, 0, 1, s17
	v_cndmask_b32_e64 v51, 0, 1, s9
	v_cndmask_b32_e64 v80, 0, 1, s13
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v87
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s15, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v82
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v41.l, 0xff80, v79.l, s7
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v79, v105, v49
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v46, 0, 1, s12
	v_mov_b16_e32 v32.l, v37.l
	v_mov_b16_e32 v37.l, v47.l
	v_mov_b16_e32 v47.l, v51.l
	v_mov_b16_e32 v51.l, v80.l
	s_and_b32 s10, s10, s25
	s_and_b32 s20, s20, s3
	v_cndmask_b32_e64 v49, 0, 1, s18
	v_cndmask_b32_e64 v77, 0, 1, s10
	v_mov_b16_e32 v35.l, v46.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v49.h, 8, v51.l
	v_cndmask_b32_e64 v51, 0, 1, s20
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v75
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v46.l, v49.l
	v_mov_b16_e32 v49.l, v77.l
	v_cndmask_b32_e64 v77, 0, 1, s15
	v_lshlrev_b16 v37.l, 8, v37.l
	v_lshlrev_b16 v37.h, 8, v47.l
	v_or_b16 v46.h, v35.l, v32.l
	v_mov_b16_e32 v35.l, v51.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v51, v58, v57, s30
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s16, s22
	s_and_b32 s19, s19, s21
	v_cndmask_b32_e64 v82, 0, 1, s16
	v_mov_b16_e32 v47.l, v77.l
	v_or_b16 v46.l, v46.l, v37.l
	v_cndmask_b32_e64 v77, 0, 1, s19
	v_or_b16 v47.h, v49.l, v37.h
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v37, 16, v51
	v_and_b32_e32 v51, 0xffff0000, v51
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v53.l, v82.l
	v_mov_b16_e32 v49.l, v77.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v80, v57, v58, s30
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v82, v79, v78, s30
	v_cndmask_b32_e64 v77, v78, v79, s30
	v_mul_f32_e32 v78, 0x3fb8aa3b, v51
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v88.l, v75.l
	v_lshlrev_b32_e32 v51, 16, v80
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v71, v103, v71
	ds_bpermute_b32 v74, v105, v74
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v78, v164, v63 :: v_dual_and_b32 v63, 0xffff0000, v80
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v80, 0xffff0000, v82
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v88
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v79, 16, v82
	v_cndmask_b16 v41.h, 0xff80, v81.l, s8
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v82, 0x3fb8aa3b, v63
	v_dual_mul_f32 v88, 0x3fb8aa3b, v80 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v160.h, v41.l
	v_mov_b16_e64 v160.l, v75.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v47.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v88, v161, v55 :: v_dual_fmac_f32 v37, v166, v84
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v84, 0x3fb8aa3b, v51 :: v_dual_lshlrev_b32 v51, 16, v77
	v_mul_f32_e32 v87, 0x3fb8aa3b, v79
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v77, 0xffff0000, v77
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v160
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v80, v74, v71, s30
	v_mul_f32_e32 v79, 0x3fb8aa3b, v51
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v82, v162, v59
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v71, v71, v74, s30
	v_perm_b32 v74, v41, v40, v153
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v79, v76, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v76, v41, v40, v139
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v41.l, v75.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v74, v105, v74
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v77, v73, v70
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v73, 16, v80
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v76, v103, v76
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v41
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v75.h, v40.l
	v_mov_b16_e32 v40.l, v75.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v47.l, v53.l, v32.l
	v_lshlrev_b16 v32.l, 8, v35.l
	s_and_b32 s8, s8, s21
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v80, 0xffff0000, v80
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s8
	s_and_b32 s7, s7, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v40
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v49.l, v49.l, v32.l
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v73, v69, v48 :: v_dual_lshlrev_b32 v48, 16, v71
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v69, 0xffff0000, v71
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v85, 0x3fb8aa3b, v80
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v40, 0, 1, s7
	v_mov_b16_e32 v32.l, v41.l
	s_and_b32 s6, s6, s3
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v70, v74, v76, s30
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v85, v33, v44
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v35.l, v40.l
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v40, v76, v74, s30
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v71, 16, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v44, 0xffff0000, v70
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v87, v159, v54
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s14, s27
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v83, 0, 1, s14
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v75
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v84, v163, v62 :: v_dual_lshlrev_b32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v71, v34, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v42.h, v35.l, v32.l
	v_mov_b16_e32 v32.l, v41.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v41, 0x3fb8aa3b, v44
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v52.l, v83.l
	s_and_b32 s1, s1, s21
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v48, 0x3fb8aa3b, v48
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.l, 8, v32.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v41, v61, v38 :: v_dual_lshlrev_b32 v38, 16, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v40, 0xffff0000, v40
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v49.h, v52.l, v49.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v48, v67, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v32.h, v75.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v75.l
	v_mov_b16_e32 v56.h, v75.l
	v_mov_b16_e32 v35.h, v75.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v66, v39
	v_dual_fmac_f32 v40, v64, v36 :: v_dual_mul_f32 v69, 0x3fb8aa3b, v69
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v39, v49, v46, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.h, v75.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, v68, v43
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v43, 0, 1, s1
	ds_bpermute_b32 v39, v103, v39
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v57, v120 offset:256
	ds_load_u16_d16 v58, v120 offset:512
	ds_load_u16_d16 v50, v120 offset:576
	ds_load_u16_d16 v59, v120 offset:768
	ds_load_u16_d16 v51, v120 offset:832
	ds_load_u16_d16 v62, v120 offset:1536
	ds_load_u16_d16 v54, v120 offset:1600
	ds_load_u16_d16 v63, v120 offset:1792
	ds_load_u16_d16 v55, v120 offset:1856
	ds_load_u16_d16 v34, v120 offset:608
	ds_load_u16_d16 v33, v120 offset:352
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v35.l, v43.l
	v_perm_b32 v43, v49, v46, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.h, v75.l
	v_mov_b16_e32 v81.h, v75.l
	v_mov_b16_e32 v53.h, v75.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v42.l, v35.l, v32.l
	ds_bpermute_b32 v43, v105, v43
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v36, v42, v47, v154
	v_perm_b32 v42, v42, v47, v155
	ds_bpermute_b32 v36, v103, v36
	ds_bpermute_b32 v42, v105, v42
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v44, v43, v39, s30
	v_cndmask_b32_e64 v39, v39, v43, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v61, 0x1000000, v44
	v_and_b32_e32 v46, 1, v39
	v_and_b32_e32 v47, 0x100, v39
	v_and_b32_e32 v49, 0x1000000, v39
	v_and_b32_e32 v39, 0x10000, v39
	v_cmp_eq_u32_e64 s34, 0, v61
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v43, v42, v36, s30
	v_cndmask_b32_e64 v36, v36, v42, s30
	v_and_b32_e32 v42, 0x100, v44
	v_cmp_eq_u32_e64 s24, 0, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, v85, 0xff800000, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 1, v44
	v_and_b32_e32 v39, 1, v43
	v_cmp_eq_u32_e64 s31, 0, v42
	v_and_b32_e32 v64, 0x1000000, v43
	v_cmp_eq_u32_e64 s27, 0, v47
	v_cmp_eq_u32_e64 s3, 1, v45
	v_cmp_eq_u32_e64 s35, 1, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, v78, 0xff800000, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 0, v49
	v_and_b32_e32 v49, 0x1000000, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v37, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 0x100, v43
	v_and_b32_e32 v43, 0x10000, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v87, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 1, v36
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v86, v161 :: v_dual_and_b32 v44, 0x10000, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v43
	v_cmp_eq_u32_e64 s36, 0, v42
	v_cmp_eq_u32_e64 s23, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, v82, 0xff800000, s27
	v_cndmask_b32_e64 v80, v48, 0xff800000, s24
	v_cndmask_b32_e64 v87, v71, 0xff800000, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x100, v36
	v_and_b32_e32 v36, 0x10000, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, v69, 0xff800000, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v44
	v_cmp_eq_u32_e64 s28, 1, v46
	v_cmp_eq_u32_e64 s26, 0, v47
	v_cmp_eq_u32_e64 s21, 0, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v79, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s22, 0, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, v88, 0xff800000, s36
	v_cndmask_b32_e64 v79, v77, 0xff800000, s26
	v_cndmask_b32_e64 v76, v38, 0xff800000, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s38, 0, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, v73, 0xff800000, s33
	v_cndmask_b32_e64 v84, 0xff800000, v84, s28
	v_cndmask_b32_e64 v77, v40, 0xff800000, s22
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v83, v80, v82
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, v41, 0xff800000, s38
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v78, v79, v76
	v_max3_f32 v39, v85, v163, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v40, v87, v88, v84
	v_max3_f32 v36, v36, v38, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v37, v37, v160, v39
	v_max3_f32 v36, v37, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, s73, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v159, v72, v36, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v85, v159
	v_sub_f32_e32 v36, v161, v159
	v_sub_f32_e32 v40, v160, v159
	v_sub_f32_e32 v42, v163, v159
	v_sub_f32_e32 v44, v87, v159
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v86, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, v38, 0, s34
	v_cndmask_b32_e64 v36, v36, 0, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v32.l, v38.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v162, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, v36.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v39, v72, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v32
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v68, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, v40, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v38, v38
	v_add3_u32 v32, v38, v32, 0x7fff
	v_mov_b16_e32 v53.l, v37.h
	v_cmp_o_f32_e64 s31, v37, v37
	v_mov_b16_e32 v35.l, v39.h
	v_cmp_o_f32_e64 s34, v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, v41, 0, s36
	v_cndmask_b32_e64 v41, 0, v42, s35
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v164, 0, v68, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v35
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s33
	v_mov_b16_e32 v56.l, v40.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v88, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.l, v41.h
	v_cmp_o_f32_e64 s35, v40, v40
	v_cmp_o_f32_e64 s36, v41, v41
	v_and_b32_e32 v46, 1, v56
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v60
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v39, v35, 0x7fff
	v_add3_u32 v38, v40, v46, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v164 :: v_dual_and_b32 v45, 1, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v41, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v32.l, 0x7fff, v35.h, s34
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s35
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, v43, 0, s38
	v_cndmask_b32_e64 v43, v44, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.l, 0x7fff, v39.h, s36
	v_and_b32_e32 v44, 1, v52
	v_permlanex16_b32 v38, v32, s73, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v65.l, v42.h
	v_mov_b16_e32 v81.l, v43.h
	v_cmp_o_f32_e64 s37, v42, v42
	v_cmp_o_f32_e64 s38, v43, v43
	v_permlanex16_b32 v39, v35, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v27, v27, v164 :: v_dual_and_b32 v48, 1, v65
	v_dual_mul_f32 v22, v22, v164 :: v_dual_and_b32 v49, 1, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v36, v44, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v42, v48, 0x7fff
	v_add3_u32 v37, v37, v45, 0x7fff
	v_add3_u32 v47, v43, v49, 0x7fff
	v_perm_b32 v42, v38, v32, v100
	v_perm_b32 v43, v38, v32, v101
	v_perm_b32 v44, v39, v35, v100
	v_perm_b32 v45, v39, v35, v101
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v66, v120 offset:288
	ds_load_u16_d16 v60, v120 offset:1024
	ds_load_u16_d16 v52, v120 offset:1088
	ds_load_u16_d16 v61, v120 offset:1280
	ds_load_u16_d16 v53, v120 offset:1344
	ds_load_u16_d16 v56, v120
	ds_load_u16_d16 v65, v120 offset:32
	ds_load_u16_d16 v48, v120 offset:64
	ds_load_u16_d16 v49, v120 offset:320
	ds_load_u16_d16_hi v33, v120 offset:480
	ds_load_u16_d16 v32, v120 offset:96
	ds_load_u16_d16_hi v57, v120 offset:384
	ds_load_u16_d16_hi v58, v120 offset:640
	ds_load_u16_d16_hi v50, v120 offset:704
	ds_load_u16_d16 v67, v120 offset:544
	ds_load_u16_d16_hi v54, v120 offset:1728
	ds_load_u16_d16_hi v63, v120 offset:1920
	ds_load_u16_d16_hi v55, v120 offset:1984
	ds_load_u16_d16_hi v59, v120 offset:896
	ds_load_u16_d16_hi v51, v120 offset:960
	ds_load_u16_d16 v35, v120 offset:864
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s37
	v_cndmask_b16 v39.l, 0x7fff, v47.h, s38
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s31
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v164
	v_mul_f32_e32 v9, v9, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v39, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v36, s73, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v164
	v_mul_f32_e32 v12, v12, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v46, v47, v39, v100
	v_perm_b32 v47, v47, v39, v101
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v64, v120 offset:2048
	ds_load_u16_d16 v73, v120 offset:2112
	ds_load_u16_d16 v39, v120 offset:1888
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v56, v120 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v65, v120 offset:160
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v48, v120 offset:192
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v32, v120 offset:224
	ds_load_u16_d16_hi v66, v120 offset:416
	ds_load_u16_d16_hi v49, v120 offset:448
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v40, v37, v36, v100
	v_perm_b32 v41, v37, v36, v101
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v60, v120 offset:1152
	ds_load_u16_d16_hi v52, v120 offset:1216
	ds_load_u16_d16 v36, v120 offset:1120
	ds_load_u16_d16_hi v61, v120 offset:1408
	ds_load_u16_d16_hi v53, v120 offset:1472
	ds_load_u16_d16 v37, v120 offset:1376
	ds_load_u16_d16_hi v62, v120 offset:1664
	ds_load_u16_d16 v38, v120 offset:1632
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v164
	v_mul_f32_e32 v14, v14, v164
	v_mul_f32_e32 v15, v15, v164
	v_mul_f32_e32 v24, v24, v164
	v_mul_f32_e32 v25, v25, v164
	v_mul_f32_e32 v26, v26, v164
	v_mul_f32_e32 v28, v28, v164
	v_mul_f32_e32 v29, v29, v164
	v_mul_f32_e32 v30, v30, v164
	v_mul_f32_e32 v31, v31, v164
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v68, v120 offset:800
	ds_load_u16_d16 v69, v120 offset:1056
	ds_load_u16_d16 v70, v120 offset:1312
	ds_load_u16_d16 v71, v120 offset:1568
	ds_load_u16_d16 v72, v120 offset:1824
	ds_load_u16_d16 v74, v120 offset:2368
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v67, v120 offset:672
	ds_load_u16_d16_hi v34, v120 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v68, v120 offset:928
	ds_load_u16_d16_hi v35, v120 offset:992
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v69, v120 offset:1184
	ds_load_u16_d16_hi v36, v120 offset:1248
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v70, v120 offset:1440
	ds_load_u16_d16_hi v37, v120 offset:1504
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v71, v120 offset:1696
	ds_load_u16_d16_hi v38, v120 offset:1760
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v72, v120 offset:1952
	ds_load_u16_d16_hi v39, v120 offset:2016
	ds_load_u16_d16_hi v73, v120 offset:2240
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[48:55], v[40:47], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, v83, v161, s30
	v_cndmask_b32_e64 v49, v161, v83, s30
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[56:63], v[40:47], v[24:31]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, v88, v77, s30
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v164
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v48, v126, v48
	ds_bpermute_b32 v49, v138, v49
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v164
	v_mul_f32_e32 v21, v21, v164
	v_mul_f32_e32 v23, v23, v164
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v50, v138, v50
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v164
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, v85, v82, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v75.l
	v_mov_b16_e32 v53.h, v75.l
	v_mov_b16_e32 v54.h, v75.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[65:72], v[40:47], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.h, v75.l
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v164
	v_mul_f32_e32 v3, v3, v164
	v_mul_f32_e32 v5, v5, v164
	v_mul_f32_e32 v7, v7, v164
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v81, v120 offset:2080
	ds_load_u16_d16 v56, v120 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v164
	v_mul_f32_e32 v4, v4, v164
	v_mul_f32_e32 v2, v2, v164
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(3)
	v_dual_cndmask_b32 v57, v49, v48 :: v_dual_cndmask_b32 v58, v48, v49
	v_cndmask_b32_e64 v48, v80, v160, s30
	v_cndmask_b32_e64 v49, v160, v80, s30
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v164
	v_mov_b32_e32 v164, v132
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v48, v126, v48
	ds_bpermute_b32 v49, v138, v49
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[40:47], v[0:7]
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v59, v49, v48 :: v_dual_cndmask_b32 v60, v48, v49
	v_cndmask_b32_e64 v48, v78, v163, s30
	v_cndmask_b32_e64 v49, v163, v78, s30
	ds_bpermute_b32 v48, v126, v48
	ds_bpermute_b32 v49, v138, v49
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v61, v49, v48 :: v_dual_cndmask_b32 v62, v48, v49
	v_cndmask_b32_e64 v48, v79, v162, s30
	v_cndmask_b32_e64 v49, v162, v79, s30
	ds_bpermute_b32 v48, v126, v48
	ds_bpermute_b32 v49, v138, v49
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v63, v49, v48, vcc_lo
	v_cndmask_b32_e32 v65, v48, v49, vcc_lo
	v_cndmask_b32_e64 v48, v86, v84, s30
	v_cndmask_b32_e64 v49, v84, v86, s30
	ds_bpermute_b32 v66, v138, v48
	ds_bpermute_b32 v67, v126, v49
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v48, v66, v66 :: v_dual_max_f32 v49, v67, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v48, v49, v48
.Ltmp9:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, v77, v88, s30
	ds_bpermute_b32 v49, v126, v49
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v68, v50, v49 :: v_dual_cndmask_b32 v69, v49, v50
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v58, v59, v60
.Ltmp11:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, v87, v76, s30
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v48, v57, v49
.Ltmp13:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, v76, v87, s30
	ds_bpermute_b32 v71, v138, v50
	ds_bpermute_b32 v70, v126, v49
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v62, v63, v65
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v50, v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v49, v49, v50, v69
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, v82, v85, s30
	ds_bpermute_b32 v85, v138, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.h, v75.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v72, v126, v50
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v50, v72, v85, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max3_f32 v86, v48, v50, v49
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v83, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, v75.l
	v_mov_b16_e32 v50.h, v75.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v48, v48, 0, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v48, v48
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, v48, v49, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v84, v159
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v49, v49
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v49, v50, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v48.h, s3
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v50, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v48, v49, v50, v100
	v_perm_b32 v49, v49, v50, v101
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v82, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, v50, 0, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v51.l, v50.h
	v_cmp_o_f32_e64 s3, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v50, v50, v51, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v80, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, v51, 0, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v52.l, v51.h
	v_cmp_o_f32_e64 s24, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v51, v51, v52, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v50.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s24
	v_permlanex16_b32 v51, v52, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v50, v51, v52, v100
	v_perm_b32 v51, v51, v52, v101
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v79, v159
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, v52, 0, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v53.l, v52.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v52, v52
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v52, v53, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v78, v159
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v54.l, v53.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v53, v53
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v53, v53, v54, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v53, v54, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v52, v53, v54, v100
	v_perm_b32 v53, v53, v54, v101
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v77, v159
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v77, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v54, v54, 0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v55.l, v54.h
	v_cmp_o_f32_e64 s3, v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v54, v54, v55, 0x7fff
	v_mov_b16_e32 v55.h, v75.l
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v75, v76, v159 :: v_dual_cndmask_b32 v76, v71, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v70, v70, v71, vcc_lo
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v71, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v71, v71
.Ltmp22:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, v75, 0, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v86, v71
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.l, v75.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s21, v75, v75
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v121, v77, v71
	v_max_f32_e32 v77, v158, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v121
	v_sub_f32_e32 v58, v58, v121
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v55, v75, v55, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v54.h, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v59, v121
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v58, v58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v55.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v55, v75, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s16
	v_cndmask_b32_e64 v58, 0, v58, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v54, v55, v75, v100
	v_perm_b32 v55, v55, v75, v101
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v75, v66, v67 :: v_dual_cndmask_b32 v66, v67, v66
	v_dual_cndmask_b32 v67, v85, v72 :: v_dual_cndmask_b32 v72, v72, v85
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v66, 0, v66, s17
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v58 :: v_dual_sub_f32 v58, v60, v121
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v67, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v58, s20
	v_cndmask_b32_e64 v60, 0, v60, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v58, v59, v58 :: v_dual_sub_f32 v59, v72, v121
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s13
.Ltmp29:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v60, v59 :: v_dual_sub_f32 v60, v62, v121
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v63, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v63, v76, v121 :: v_dual_add_f32 v58, v58, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s15
	v_cndmask_b32_e64 v62, 0, v62, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v63, 0, v63, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v158
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v61, v60
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v65, v121
	v_sub_f32_e32 v65, v68, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s9
	v_cndmask_b32_e64 v65, 0, v65, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v62, v61
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v70, v121
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v59, v60, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v62, v63, v62 :: v_dual_sub_f32 v63, v69, v121
.Ltmp38:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v160, v77, v71
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s8
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v71, v75, v121 :: v_dual_add_f32 v60, v62, v63
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp41:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v161, v59, v60
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v71, v66
	v_add_f32_e32 v57, v66, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_add_f32_e32 v72, v57, v58
.Ltmp44:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v66, v120 offset:2560
	ds_load_u16_d16 v82, v120 offset:2336
	ds_load_u16_d16 v75, v120 offset:2624
	ds_load_u16_d16 v67, v120 offset:2816
	ds_load_u16_d16 v83, v120 offset:2592
	ds_load_u16_d16 v76, v120 offset:2880
	ds_load_u16_d16 v68, v120 offset:3072
	ds_load_u16_d16 v84, v120 offset:2848
	ds_load_u16_d16 v77, v120 offset:3136
	ds_load_u16_d16 v69, v120 offset:3328
	ds_load_u16_d16 v85, v120 offset:3104
	ds_load_u16_d16 v78, v120 offset:3392
	ds_load_u16_d16 v70, v120 offset:3584
	ds_load_u16_d16 v86, v120 offset:3360
	ds_load_u16_d16 v79, v120 offset:3648
	ds_load_u16_d16 v71, v120 offset:3840
	ds_load_u16_d16 v80, v120 offset:3904
	ds_load_u16_d16 v87, v120 offset:3616
	ds_load_u16_d16 v88, v120 offset:3872
	ds_load_u16_d16 v65, v120 offset:2304
	ds_load_u16_d16_hi v64, v120 offset:2176
	ds_load_u16_d16_hi v74, v120 offset:2496
	ds_load_u16_d16 v57, v120 offset:2400
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v66, v120 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v75, v120 offset:2752
	ds_load_u16_d16 v58, v120 offset:2656
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v67, v120 offset:2944
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v76, v120 offset:3008
	ds_load_u16_d16 v59, v120 offset:2912
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v68, v120 offset:3200
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v77, v120 offset:3264
	ds_load_u16_d16 v60, v120 offset:3168
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v78, v120 offset:3520
	ds_load_u16_d16 v61, v120 offset:3424
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v79, v120 offset:3776
	ds_load_u16_d16 v62, v120 offset:3680
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v80, v120 offset:4032
	ds_load_u16_d16 v63, v120 offset:3936
	ds_load_u16_d16_hi v69, v120 offset:3456
	ds_load_u16_d16_hi v70, v120 offset:3712
	ds_load_u16_d16_hi v71, v120 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v65, v120 offset:2432
	ds_load_u16_d16_hi v81, v120 offset:2208
	ds_load_u16_d16_hi v56, v120 offset:2272
	ds_load_u16_d16_hi v82, v120 offset:2464
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v57, v120 offset:2528
	ds_load_u16_d16_hi v83, v120 offset:2720
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v161, v72, v161 :: v_dual_sub_f32 v72, v158, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v158, v160 :: v_dual_mov_b32 v163, v161
.Ltmp46:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v162, v72
	v_mov_b32_e32 v72, v159
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[73:80], v[48:55], v[8:15]
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[64:71], v[48:55], v[24:31]
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v161, v163
.Ltmp50:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v58, v120 offset:2784
	ds_load_u16_d16_hi v84, v120 offset:2976
	ds_load_u16_d16_hi v59, v120 offset:3040
	ds_load_u16_d16_hi v85, v120 offset:3232
	ds_load_u16_d16_hi v60, v120 offset:3296
	ds_load_u16_d16_hi v86, v120 offset:3488
	ds_load_u16_d16_hi v61, v120 offset:3552
	ds_load_u16_d16_hi v87, v120 offset:3744
	ds_load_u16_d16_hi v62, v120 offset:3808
	ds_load_u16_d16_hi v88, v120 offset:4000
	ds_load_u16_d16_hi v63, v120 offset:4064
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v32, 0, v162, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v132, v164, v32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[81:88], v[48:55], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[56:63], v[48:55], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v132, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
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
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v37, v103, v132
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v102
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s39, v104
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s39, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s39, v36
	v_cmp_gt_i32_e64 s1, s39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s0, s39, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v53, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v54, v47
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_fma_f32 v52, -v40, v45, 1.0
	v_fma_f32 v55, -v42, v48, 1.0
	v_div_scale_f32 v43, s3, v24, v37, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v51, 1.0
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v48, v55, v48
	v_rcp_f32_e32 v55, v53
	v_div_scale_f32 v46, s7, v27, v37, v27
	v_div_scale_f32 v50, null, v37, v37, v29
	v_fma_f32 v59, -v47, v54, 1.0
	v_dual_mul_f32 v60, v43, v48 :: v_dual_fmac_f32 v51, v57, v51
	v_mul_f32_e32 v58, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v50
	v_fma_f32 v62, -v53, v55, 1.0
	v_fmac_f32_e32 v54, v59, v54
	v_fma_f32 v59, -v42, v60, v43
	v_mul_f32_e32 v63, v46, v51
	v_fma_f32 v57, -v40, v58, v41
	v_fmac_f32_e32 v55, v62, v55
	v_div_scale_f32 v49, s8, v26, v37, v26
	v_fmac_f32_e32 v60, v59, v48
	v_fma_f32 v59, -v44, v63, v46
	v_fmac_f32_e32 v58, v57, v45
	v_fma_f32 v61, -v50, v56, 1.0
	v_div_scale_f32 v52, s9, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v59, v51
	v_fma_f32 v40, -v40, v58, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v61, v56
	v_mul_f32_e32 v57, v49, v54
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v45, v58
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v40, v37, v25
	v_mul_f32_e32 v40, v52, v56
	v_fma_f32 v41, -v47, v57, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v57, v41, v54
	v_fma_f32 v42, -v42, v60, v43
	v_fma_f32 v41, -v44, v63, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, s10, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v48, v60
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v45, v43, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v47, v57, v49
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v51, v63
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v54, v57
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v56
	v_fma_f32 v27, -v53, v45, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v39, v44, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v52
	v_fmac_f32_e32 v45, v27, v55
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v56, v40
	v_fma_f32 v42, -v53, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v55, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v39, v26, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v40, 1.0
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s7, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v43, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v27, s3, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v38.l, v26.h
	v_cmp_o_f32_e64 s8, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v27, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v47, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v47, v26, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v41
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v43, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v41, v39
	v_fma_f32 v39, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v41, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s8
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s7, v16, v37, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v42, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v46, v43, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s7
	v_dual_fmac_f32 v43, v28, v27 :: v_dual_and_b32 v28, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	v_fma_f32 v41, -v46, v43, v42
	v_div_scale_f32 v42, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v41, v27, v43
	v_rcp_f32_e32 v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v27, v37, v16
	v_div_scale_f32 v27, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v42, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v38.h
	v_and_b32_e32 v45, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v28, v39
	v_div_scale_f32 v28, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v27, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v28, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s7, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v41, v40
	v_fmac_f32_e32 v30, v44, v39
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v27, v46, v41
	v_fma_f32 v17, -v42, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v42, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v30
	v_div_scale_f32 v30, s3, v21, v37, v21
	v_fma_f32 v27, -v27, v46, v41
	v_fmac_f32_e32 v47, v42, v47
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s7, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v44, v41, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v38.h
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v31, -v44, v41, v39
	v_div_scale_f32 v39, null, v37, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v38
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v41
	v_rcp_f32_e32 v29, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v42, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	v_div_fixup_f32 v21, v30, v37, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v31.h, v38.h
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s3, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fmac_f32_e32 v27, v40, v27
	v_div_scale_f32 v40, s7, v22, v37, v22
	v_fma_f32 v42, -v39, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	v_add3_u32 v44, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v40, v27
	v_rcp_f32_e32 v45, v41
	v_fmac_f32_e32 v31, v42, v29
	v_div_scale_f32 v42, null, v37, v37, v8
	v_fma_f32 v46, -v28, v19, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s8, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v31, v30
	v_rcp_f32_e32 v30, v42
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v29, s3, v9, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s7, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v42, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v42, v31, v28
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v39, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v38.h
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s3, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s7, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v9, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v40, v30
	v_div_scale_f32 v40, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v28, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v40
	v_fma_f32 v29, -v39, v43, 1.0
	v_fmac_f32_e32 v42, v44, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v42, v31
	v_div_scale_f32 v28, s3, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v40, v20, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s7, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v28, -v40, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s3, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s7, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v42, -v20, v40, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v10, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v41, 1.0
	v_fmac_f32_e32 v40, v42, v21
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v41, v29, v41
	v_fma_f32 v13, -v20, v40, v28
	v_div_scale_f32 v20, s3, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s7, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v41
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v41, v21
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s3, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v38.h
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s7
	v_cmp_o_f32_e64 s7, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s3, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v40, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s7, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s8, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v40, v39, v13
	v_fma_f32 v10, -v3, v42, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v40, v29
	v_fmac_f32_e32 v42, v10, v21
	v_fma_f32 v23, -v27, v39, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v40
	v_fma_f32 v3, -v3, v42, v30
	v_fmac_f32_e32 v39, v23, v15
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v39
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v38.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v38.h
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s7, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s30
	v_cndmask_b32_e64 v5, v25, v16, s30
	v_cndmask_b32_e64 v16, v0, v9, s30
	v_cndmask_b32_e64 v0, v9, v0, s30
	v_cndmask_b32_e64 v3, v24, v26, s30
	v_cndmask_b32_e64 v6, v19, v17, s30
	v_cndmask_b32_e64 v7, v17, v19, s30
	v_cndmask_b32_e64 v10, v8, v18, s30
	v_cndmask_b32_e64 v8, v18, v8, s30
	v_cndmask_b32_e64 v15, v14, v11, s30
	v_cndmask_b32_e64 v11, v11, v14, s30
	v_cndmask_b32_e64 v14, v12, v22, s30
	v_cndmask_b32_e64 v12, v22, v12, s30
	v_cndmask_b32_e64 v17, v2, v13, s30
	v_cndmask_b32_e64 v2, v13, v2, s30
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s30
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v100
	v_perm_b32 v13, v13, v16, v101
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v100
	v_perm_b32 v1, v3, v1, v101
	v_perm_b32 v2, v5, v4, v100
	v_perm_b32 v3, v5, v4, v101
	v_perm_b32 v4, v7, v6, v100
	v_perm_b32 v5, v7, v6, v101
	v_perm_b32 v6, v8, v10, v100
	v_perm_b32 v7, v8, v10, v101
	v_perm_b32 v8, v9, v15, v100
	v_perm_b32 v9, v9, v15, v101
	v_perm_b32 v10, v11, v14, v100
	v_perm_b32 v11, v11, v14, v101
	v_perm_b32 v14, v18, v17, v100
	v_perm_b32 v15, v18, v17, v101
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 177
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 177
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14120
; TotalNumSgprs: 77
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 177
; Occupancy: 8
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
