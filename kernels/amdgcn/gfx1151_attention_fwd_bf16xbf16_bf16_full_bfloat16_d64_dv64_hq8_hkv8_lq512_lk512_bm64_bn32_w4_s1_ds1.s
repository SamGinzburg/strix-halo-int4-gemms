	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x5c
	s_load_b128 s[48:51], s[0:1], 0x30
	v_dual_mov_b32 v49, 0x7632 :: v_dual_and_b32 v46, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v47, 3, v0
	v_mov_b32_e32 v48, 0x5410
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[60:61], s[0:1], 0x10
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v45, 3, v46
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s68, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s69, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s68, v47
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s39, s68, s69
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v112, 15, v0
	s_mov_b32 s59, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v50, 2, v0
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v114, 16, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[105:106], null, s52, v47, v[45:46]
	s_mul_i32 s9, s52, s39
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s52, v45
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s8, s52, 5
	s_mul_i32 s10, s52, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s57, s5, 0xffff
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v1, s9, v105
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v111, s52, 4, v105
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s56, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v2, 1, v1
	v_add_lshl_u32 v3, v111, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_load_b64 s[4:5], s[0:1], 0x6c
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[5:8], v2, s[56:59], 0 offen
	buffer_load_b128 v[33:36], v3, s[56:59], 0 offen
	buffer_load_b128 v[37:40], v4, s[56:59], 0 offen
	buffer_load_b128 v[41:44], v1, s[56:59], 0 offen
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v52, 1, v0
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v113, 0x60, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v116, 4, v0
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v115, 2, v0
	v_bfe_i32 v56, v0, 5, 1
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v57, 24, v0
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v59, 0x70, v52
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s0, 3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v58, s68, v50
	v_cmp_eq_u32_e64 s0, 0, v114
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v51, 3, v0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v54, 12, v0
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v55, 5, v0
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v60, 7, v112
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v46, 4, v46
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v61, 6, v113
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v64, 2, v113
	v_dual_mov_b32 v13, v25 :: v_dual_and_b32 v56, 0x204, v56
	v_dual_mov_b32 v1, v25 :: v_dual_and_b32 v70, 0x80, v116
	v_dual_mov_b32 v2, v25 :: v_dual_and_b32 v65, 0x7c, v115
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s1
	v_lshrrev_b32_e32 v66, 1, v57
	v_cndmask_b32_e64 v48, 0x1054, v48, s0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 0x200, v58
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v58, v116, v59
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v53, 48, v0
	v_dual_mov_b32 v9, v25 :: v_dual_and_b32 v52, 0x80, v52
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v117, 3, v112
	v_dual_mov_b32 v14, v25 :: v_dual_lshlrev_b32 v63, 8, v54
	v_dual_mov_b32 v15, v25 :: v_dual_lshlrev_b32 v68, 5, v51
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v55, 0x260, v55
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v67, 11, v51
	v_lshlrev_b32_e32 v71, 6, v114
	v_or3_b32 v59, v60, v61, v46
	v_or_b32_e32 v118, v46, v60
	v_lshl_or_b32 v60, v54, 1, v64
	v_xor_b32_e32 v120, v56, v65
	v_lshl_or_b32 v56, v57, 6, v66
	v_and_or_b32 v57, v115, 16, v70
	v_cndmask_b32_e64 v49, 0x3276, v49, s0
	v_lshl_or_b32 v48, v48, 8, v48
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_add_nc_u32 v121, 0, v58
	v_lshrrev_b32_e32 v62, 1, v53
	v_lshlrev_b32_e32 v69, 3, v113
	v_lshl_or_b32 v53, v53, 6, v117
	v_dual_mov_b32 v108, v25 :: v_dual_add_nc_u32 v119, 0, v52
	v_lshl_or_b32 v61, v54, 9, v68
	v_lshl_or_b32 v54, v54, 3, v64
	v_or3_b32 v122, v63, v55, v60
	v_or3_b32 v123, v56, v46, v64
	v_xor_b32_e32 v46, 16, v118
	v_or_b32_e32 v52, v120, v52
	v_and_b32_e32 v48, 0x540054, v48
	v_lshl_or_b32 v49, v49, 8, v49
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v72, 0, v114
	v_xor_b32_e32 v56, 32, v118
	v_xor_b32_e32 v53, v53, v62
	v_xor_b32_e32 v54, v61, v54
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s2, s53, v45
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[106:107], null, s53, v47, v[45:46]
	v_xor_b32_e32 v45, 0x408, v52
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_add_nc_u32 v126, 0, v46
	v_xor_b32_e32 v46, 8, v122
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v50, s5, v50
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v58, 0, v59
	v_xad_u32 v65, v59, 16, 0
	v_xad_u32 v66, v59, 32, 0
	v_xad_u32 v70, v59, 48, 0
	v_xad_u32 v73, v59, 64, 0
	v_xad_u32 v55, 0x50, v59, 0
	v_xad_u32 v60, 0x60, v59, 0
	v_xad_u32 v63, 0x70, v59, 0
	v_xor_b32_e32 v59, 48, v118
	v_xor_b32_e32 v61, 64, v118
	v_xor_b32_e32 v62, 0x50, v118
	v_xor_b32_e32 v64, 0x60, v118
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_add_nc_u32 v125, v72, v54
	v_add_nc_u32_e32 v127, 0, v56
	v_add_nc_u32_e32 v133, v119, v53
	v_xor_b32_e32 v52, 24, v122
	v_xor_b32_e32 v53, 4, v123
	v_xor_b32_e32 v54, 8, v123
	v_xor_b32_e32 v56, 12, v123
	v_add_nc_u32_e32 v135, 0, v46
	v_add_nc_u32_e32 v138, 0, v45
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v128, 0, v59
	v_add_nc_u32_e32 v129, 0, v61
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v130, 0, v62
	v_add_nc_u32_e32 v131, 0, v64
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v134, v51, 3, v50
	v_add_nc_u32_e32 v137, 0, v52
	v_add_nc_u32_e32 v139, 0, v53
	v_add_nc_u32_e32 v140, 0, v54
	v_add_nc_u32_e32 v141, 0, v56
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s55, s8
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s4, s3
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v144, 0x7c, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v146, s5, 5, v134
	v_lshl_add_u32 v147, s53, 4, v106
	v_lshl_add_u32 v148, v112, 1, 0
	s_mov_b32 s40, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s54, s54, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s4, s5, s68
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s64, s48
	s_add_i32 s48, s3, s8
	s_mov_b32 s70, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_and_b32 s57, s7, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s65, s49
	s_add_i32 s48, s48, s4
	s_mov_b32 s56, s6
	s_mov_b32 s49, s40
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v121, v[5:8]
	s_waitcnt vmcnt(2)
	ds_store_b128 v121, v[33:36] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v121, v[37:40] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v121, v[41:44] offset:6144
	v_mov_b32_e32 v8, v25
	v_or3_b32 v57, v57, v67, v71
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_lshl_or_b32 v47, v48, 4, v48
	v_dual_mov_b32 v107, v25 :: v_dual_and_b32 v48, 0x760076, v49
	v_or3_b32 v124, v57, v69, v68
	v_xor_b32_e32 v49, 16, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v109, 0x5040504, v47
	v_lshl_or_b32 v47, v48, 4, v48
	s_waitcnt lgkmcnt(0)
	v_xor_b32_e32 v45, 32, v124
	v_xor_b32_e32 v46, 64, v124
	v_add_nc_u32_e32 v136, 0, v49
	v_and_b32_e32 v110, 0x7060706, v47
	s_barrier
	v_add_nc_u32_e32 v142, 0, v45
	v_add_nc_u32_e32 v143, 0, v46
	v_mov_b32_e32 v5, v25
	ds_load_b128 v[33:36], v58
	ds_load_b128 v[37:40], v65
	ds_load_b128 v[41:44], v66
	ds_load_b128 v[45:48], v70
	ds_load_b128 v[49:52], v73
	ds_load_b128 v[53:56], v55
	ds_load_b128 v[57:60], v60
	ds_load_b128 v[61:64], v63
	v_xor_b32_e32 v67, 0x70, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v132, 0, v67
	v_xor_b32_e32 v67, 0x60, v124
	v_add_nc_u32_e32 v145, 0, v67
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_or_b32 s6, s49, s69
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s7, s48, s49
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s8, s6, s52
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v81, s7, v134, 1
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v83, s8, v105, 1
	v_add_lshl_u32 v84, s8, v111, 1
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v98, v154, v154 :: v_dual_add_nc_u32 v75, 0, v123
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v82, s7, v146, 1
	v_cndmask_b32_e64 v154, 0x80000000, v81, s1
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v81, 0x80000000, v83, vcc_lo
	v_dual_cndmask_b32 v85, 0x80000000, v84 :: v_dual_add_nc_u32 v78, 0, v118
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v156, 0x80000000, v82, s1
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_b128 v[81:84], v81, s[56:59], 0 offen
	buffer_load_b128 v[85:88], v85, s[56:59], 0 offen
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v72, s47 :: v_dual_mov_b32 v69, s44
	v_mov_b32_e32 v71, s46
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v70, s45 :: v_dual_mov_b32 v67, s42
	v_dual_mov_b32 v68, s43 :: v_dual_mov_b32 v65, s40
	v_dual_mov_b32 v66, s41 :: v_dual_add_nc_u32 v77, 0, v122
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v73.l, 0
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v99, v155, v155 :: v_dual_add_nc_u32 v74, 0, v124
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s6, s6, s53
	v_dual_mov_b32 v151, v108 :: v_dual_add_nc_u32 v76, v119, v120
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v103.l, v73.l
	v_mov_b16_e32 v102.l, v73.l
	v_mov_b16_e64 v155.l, v73.l
	v_mov_b16_e64 v165.l, v73.l
	v_mov_b16_e64 v166.l, v73.l
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v79, s6, v106, 1
	v_add_lshl_u32 v80, s6, v147, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v167.l, v73.l
	v_mov_b16_e64 v168.l, v73.l
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v153
	v_dual_mov_b32 v152, v107 :: v_dual_add_nc_u32 v97, 0, v116
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v100, v149, v149 :: v_dual_max_f32 v101, v150, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v107.h, v73.l
	v_mov_b16_e32 v108.h, v73.l
	v_mov_b16_e32 v104.h, v73.l
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v150
	v_cmp_neq_f32_e64 s4, 0xff800000, v149
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v121, v[81:84]
	s_waitcnt vmcnt(0)
	ds_store_b128 v121, v[85:88] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v126
	ds_load_b128 v[81:84], v78
	ds_load_b128 v[89:92], v78 offset:2048
	ds_load_b128 v[93:96], v126 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[157:164], v[81:88], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[89:96], v[33:40], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v128
	ds_load_b128 v[65:68], v127
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[157:164], v[65:72], v[41:48], v[157:164]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v127 offset:2048
	ds_load_b128 v[69:72], v128 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[65:72], v[41:48], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v130
	ds_load_b128 v[65:68], v129
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[157:164], v[65:72], v[49:56], v[157:164]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v129 offset:2048
	ds_load_b128 v[69:72], v130 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[65:72], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v132
	ds_load_b128 v[65:68], v131
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[157:164], v[65:72], v[57:64], v[157:164]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v131 offset:2048
	ds_load_b128 v[69:72], v132 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[65:72], v[57:64], v[81:88]
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_b128 v[65:68], v154, s[64:67], 0 offen
	buffer_load_b128 v[69:72], v156, s[64:67], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.h, v73.l
	v_mov_b16_e64 v154.h, v73.l
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v78, 0xff80ff80, v66, s1
	v_cndmask_b32_e64 v89, 0xff80ff80, v65, s1
	v_cndmask_b32_e64 v90, 0xff80ff80, v68, s1
	v_cndmask_b32_e64 v91, 0xff80ff80, v67, s1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v70, 0xff80ff80, v70, s1
	v_cndmask_b32_e64 v69, 0xff80ff80, v69, s1
	v_cndmask_b32_e64 v72, 0xff80ff80, v72, s1
	v_cndmask_b32_e64 v71, 0xff80ff80, v71, s1
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e32 v66.l, v91.l
	v_mov_b16_e32 v66.h, v90.l
	v_mov_b16_e32 v65.l, v89.l
	v_mov_b16_e32 v65.h, v78.l
	v_mov_b16_e32 v68.l, v71.l
	v_mov_b16_e32 v68.h, v72.l
	v_mov_b16_e32 v67.l, v69.l
	v_mov_b16_e32 v67.h, v70.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v103.h, v90.l
	v_mov_b16_e32 v102.h, v91.l
	v_mov_b16_e64 v165.h, v69.l
	v_mov_b16_e64 v166.h, v71.l
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v133, v[65:66], v[67:68] offset1:32
	v_mov_b16_e32 v66.l, v91.h
	v_mov_b16_e32 v66.h, v90.h
	v_mov_b16_e32 v65.l, v89.h
	v_mov_b16_e32 v65.h, v78.h
	v_mov_b16_e32 v68.l, v71.h
	v_mov_b16_e32 v68.h, v72.h
	v_mov_b16_e32 v67.l, v69.h
	v_mov_b16_e32 v67.h, v70.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v167.h, v72.l
	v_mov_b16_e64 v168.h, v70.l
	v_and_b32_e32 v92, 0xffff0000, v70
	v_and_b32_e32 v93, 0xffff0000, v69
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v133, v[65:66], v[67:68] offset0:64 offset1:96
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v65, 0xffff0000, v91
	v_and_b32_e32 v91, 0xffff0000, v71
	v_and_b32_e32 v94, 0xffff0000, v72
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[69:70], v77
	ds_load_b64 v[71:72], v135
	v_mov_b16_e64 v155.h, v78.l
	v_mov_b16_e32 v73.h, v89.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v103
	v_cmp_neq_f32_e64 s6, 0xff800000, v102
	v_cmp_neq_f32_e64 s11, 0xff800000, v165
	v_cmp_neq_f32_e64 s10, 0xff800000, v155
	v_cmp_neq_f32_e64 s12, 0xff800000, v166
	v_cmp_neq_f32_e64 s13, 0xff800000, v73
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s8, s1, s7
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v66, 0xffff0000, v78
	v_and_b32_e32 v67, 0xffff0000, v89
	v_and_b32_e32 v68, 0xffff0000, v90
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v65
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v65, 0, 1, s8
	s_and_b32 s9, s1, s6
	s_and_b32 s15, s1, s13
	s_and_b32 s13, s1, s10
	s_and_b32 s7, s1, s12
	s_and_b32 s11, s1, s11
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v66
	v_cmp_neq_f32_e64 s19, 0xff800000, v67
	v_cmp_neq_f32_e64 s22, 0xff800000, v68
	v_cmp_neq_f32_e64 s24, 0xff800000, v92
	v_cmp_neq_f32_e64 s26, 0xff800000, v94
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s9
	v_cndmask_b32_e64 v67, 0, 1, s13
	v_cndmask_b32_e64 v68, 0, 1, s15
	v_cndmask_b32_e64 v92, 0, 1, s7
	v_cndmask_b32_e64 v94, 0, 1, s11
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	ds_load_b64 v[89:90], v137
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v167
	v_cmp_neq_f32_e64 s16, 0xff800000, v168
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s20, s1, s18
	v_or_b16 v102.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v67.l
	v_mov_b16_e32 v66.l, v68.l
	v_mov_b16_e32 v67.l, v92.l
	v_mov_b16_e32 v68.l, v94.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v70
	v_and_b32_e32 v70, 0xffff0000, v70
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v94, 16, v72
	v_and_b32_e32 v72, 0xffff0000, v72
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s1, s14
	s_and_b32 s10, s1, s16
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v70, 0x3fb8aa3b, v70
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v72
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s18, s1, s22
	v_cndmask_b32_e64 v95, 0, 1, s20
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v70, s54, v160
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v91
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v91, 0, 1, s6
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v72, s54, v164
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v93
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v93, 0, 1, s10
	v_or_b16 v102.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v91.l
	v_cndmask_b32_e64 v103, 0, 1, s18
	s_and_b32 s21, s1, s19
	v_mov_b16_e32 v66.l, v93.l
	s_and_b32 s19, s1, s17
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s12, s1, s26
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	ds_load_b64 v[77:78], v136
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.h, 8, v66.l
	s_waitcnt lgkmcnt(0)
	v_or_b16 v66.h, v67.l, v65.l
	s_barrier
	v_cndmask_b32_e64 v96, 0, 1, s21
	v_or_b16 v66.l, v68.l, v65.h
	v_cndmask_b32_e64 v155, 0, 1, s19
	v_mov_b16_e32 v65.l, v95.l
	s_and_b32 s16, s1, s24
	v_mov_b16_e32 v67.l, v96.l
	ds_store_2addr_stride64_b32 v76, v102, v66 offset1:1
	v_cndmask_b32_e64 v102, 0, 1, s12
	v_mov_b16_e32 v66.l, v103.l
	v_cndmask_b32_e64 v165, 0, 1, s16
	v_mov_b16_e64 v68.l, v155.l
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s17, s1, s25
	v_lshlrev_b16 v65.h, 8, v66.l
	v_mov_b16_e32 v66.l, v102.l
	s_and_b32 s14, s1, s23
	v_cndmask_b32_e64 v93, 0, 1, s17
	v_or_b16 v95.l, v67.l, v65.l
	v_or_b16 v95.h, v68.l, v65.h
	v_cndmask_b32_e64 v68, 0, 1, s14
	v_mov_b16_e64 v65.l, v165.l
	v_lshlrev_b16 v65.h, 8, v66.l
	v_mov_b16_e32 v67.l, v93.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v93, 0x3fb8aa3b, v94 :: v_dual_lshlrev_b32 v66, 16, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.h, v68.l, v65.h
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v68, 16, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v155, 0x3fb8aa3b, v66 :: v_dual_lshlrev_b32 v76, 16, v71
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v65.l, v67.l, v65.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v92, 0x3fb8aa3b, v92 :: v_dual_lshlrev_b32 v91, 16, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v166, 0x3fb8aa3b, v68
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v67, 0xffff0000, v89
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_2addr_stride64_b32 v138, v95, v65 offset1:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v166, s54, v87
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v165, 0x3fb8aa3b, v67
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_b32 v65, v75
	ds_load_b32 v66, v139
	ds_load_b32 v67, v140
	ds_load_b32 v68, v141
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v76, 0x3fb8aa3b, v76
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v71, 0xffff0000, v71
	v_lshlrev_b32_e32 v103, 16, v78
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v165, s54, v86 :: v_dual_fmac_f32 v92, s54, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, s54, v161
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v71, 0x3fb8aa3b, v71 :: v_dual_lshlrev_b32 v96, 16, v77
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v93, s54, v163
	v_fmac_f32_e32 v155, s54, v85
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v94, 0x3fb8aa3b, v96
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v89, 0xffff0000, v90
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v91
	v_dual_mul_f32 v102, 0x3fb8aa3b, v103 :: v_dual_fmac_f32 v71, s54, v162
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v94, s54, v81
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v81, 1, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v102, s54, v83 :: v_dual_and_b32 v77, 0xffff0000, v77
	v_dual_fmac_f32 v90, s54, v157 :: v_dual_and_b32 v83, 1, v66
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s31, 1, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v96, 0x3fb8aa3b, v77
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v69, 0xffff0000, v69
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v75, 0x10000, v66
	v_cmp_eq_u32_e64 s36, 1, v83
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v89, 0x3fb8aa3b, v89 :: v_dual_fmac_f32 v96, s54, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v91, 0x3fb8aa3b, v69
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v69, 0x10000, v65
	v_and_b32_e32 v82, 0x1000000, v65
	v_lshrrev_b16 v65.l, 8, v65.l
	v_lshrrev_b16 v65.h, 8, v66.l
	v_cmp_ne_u32_e64 s24, 0, v75
	v_cmp_ne_u32_e64 s34, 0, v69
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v75, 0xff800000, v76, s36
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v69.l, 1, v65.l
	v_and_b16 v69.h, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v90, s31
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v78, 0xffff0000, v78
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v91, s54, v158
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s35, 1, v69.l
	v_cmp_eq_u16_e64 s38, 1, v69.h
	v_and_b32_e32 v77, 0x10000, v67
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v103, 0x3fb8aa3b, v78
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v85, 1, v67
	v_and_b32_e32 v86, 0x1000000, v67
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v76, 0xff800000, v71, s38
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v89, s54, v88
	v_dual_fmac_f32 v103, s54, v84 :: v_dual_and_b32 v84, 0x1000000, v66
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v66.l, 8, v67.l
	v_lshrrev_b16 v66.h, 8, v68.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v92, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v87, 1, v68
	v_cmp_ne_u32_e64 s23, 0, v77
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v66.h, 1, v66.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v77, 0xff800000, v93, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v88, 0x1000000, v68
	v_cmp_ne_u32_e64 s33, 0, v82
	v_cmp_eq_u16_e64 s30, 1, v66.l
	v_cmp_eq_u16_e64 s29, 1, v66.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v66, 0xff800000, v91, s35
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v78, 0x10000, v68
	v_cmp_ne_u32_e64 s27, 0, v86
	v_cmp_eq_u32_e64 s26, 1, v87
	v_cmp_ne_u32_e64 s37, 0, v84
	v_cmp_eq_u32_e64 s28, 1, v85
	v_cmp_ne_u32_e64 s22, 0, v78
	v_cmp_ne_u32_e64 s25, 0, v88
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v70, s33
	v_cndmask_b32_e64 v159, 0xff800000, v102, s23
	v_cndmask_b32_e64 v160, 0xff800000, v103, s27
	v_cndmask_b32_e64 v161, 0xff800000, v155, s26
	v_cndmask_b32_e64 v163, 0xff800000, v166, s22
	v_cndmask_b32_e64 v158, 0xff800000, v96, s30
	v_cndmask_b32_e64 v162, 0xff800000, v165, s29
	v_cndmask_b32_e64 v78, 0xff800000, v72, s37
	v_cndmask_b32_e64 v157, 0xff800000, v94, s28
	v_cndmask_b32_e64 v164, 0xff800000, v89, s25
	s_barrier
	ds_store_b128 v74, v[65:68]
	ds_store_b128 v142, v[75:78]
	ds_store_b128 v143, v[157:160]
	ds_store_b128 v145, v[161:164]
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v65, v66
	v_max3_f32 v71, v68, v75, v76
	v_max3_f32 v72, v158, v159, v160
	v_max3_f32 v74, v161, v162, v163
	v_max3_f32 v69, v77, v78, v157
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[89:92], v125
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v70, v70, v67, v71
	v_max3_f32 v71, v72, v74, v164
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[85:88], v125 offset:512
	ds_load_b128 v[93:96], v125 offset:1024
	ds_load_b128 v[81:84], v125 offset:1536
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v73.h, v73.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v70, v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v70, v69, s70, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v71, v153, v69, v70
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v102, v96, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v169, v76, v71
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v76, v92, v92 :: v_dual_sub_f32 v155, v65, v71
.Ltmp11:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v77, v71
	v_sub_f32_e32 v170, v78, v71
	v_dual_sub_f32 v69, v158, v71 :: v_dual_max_f32 v76, v76, v102
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v77, v89, v93, v90
	v_max3_f32 v78, v94, v91, v95
.Ltmp13:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v166, v67, v71
	s_waitcnt lgkmcnt(0)
	v_dual_sub_f32 v67, v159, v71 :: v_dual_max_f32 v102, v84, v84
	v_sub_f32_e32 v165, v66, v71
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v76, v77, v78, v76
	v_dual_max_f32 v77, v88, v88 :: v_dual_sub_f32 v168, v75, v71
	v_max3_f32 v78, v85, v81, v86
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v167, v68, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v159.h, v73.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v77, v77, v102
	v_max3_f32 v102, v82, v87, v83
.Ltmp17:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v158.h, v73.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v67, v67
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v77, v78, v102, v77
.Ltmp19:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v78, v153, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.h, v73.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v78, v78
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s24
	v_cndmask_b32_e64 v69, 0, v69, s30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s30, v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v78, 0, v78, s5
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v157, v71
	v_sub_f32_e32 v68, v161, v71
	v_sub_f32_e32 v74, v162, v71
	v_dual_sub_f32 v72, v163, v71 :: v_dual_mul_f32 v21, v21, v78
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v78
	v_mul_f32_e32 v31, v31, v78
	v_mul_f32_e32 v17, v17, v78
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v68, v68
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v163, 0x80000000, v79, s2
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v70, v160, v71 :: v_dual_mul_f32 v29, v29, v78
	v_dual_sub_f32 v75, v164, v71 :: v_dual_mul_f32 v26, v26, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.h, v73.l
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v78
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s28
	v_cndmask_b32_e64 v74, 0, v74, s29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v79, 0, v68, s26
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v78
	v_mul_f32_e32 v30, v30, v78
	v_mul_f32_e32 v32, v32, v78
	v_mul_f32_e32 v18, v18, v78
	v_mul_f32_e32 v19, v19, v78
	v_mul_f32_e32 v23, v23, v78
	v_mul_f32_e32 v24, v24, v78
	v_mul_f32_e32 v9, v9, v78
	v_mul_f32_e32 v10, v10, v78
	v_mul_f32_e32 v11, v11, v78
	v_mul_f32_e32 v12, v12, v78
	v_mul_f32_e32 v13, v13, v78
	v_mul_f32_e32 v14, v14, v78
	v_mul_f32_e32 v15, v15, v78
	v_mul_f32_e32 v16, v16, v78
	v_mul_f32_e32 v1, v1, v78
	v_mul_f32_e32 v2, v2, v78
	v_mul_f32_e32 v3, v3, v78
	v_mul_f32_e32 v4, v4, v78
	v_mul_f32_e32 v6, v6, v78
	v_mul_f32_e32 v7, v7, v78
	v_mul_f32_e32 v8, v8, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v160.h, v73.l
	v_mov_b16_e64 v153.l, v66.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v5, v5, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v159.l, v74.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v160.l, v79.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v22, v22, v78
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v78, v76
.Ltmp21:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v157.h, v73.l
	v_mov_b16_e64 v162.h, v73.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s26, v65, v65
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v157.l, v67.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v75
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s28, v66, v66
	v_cmp_o_f32_e64 s24, v74, v74
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s27
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s27, v69, v69
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v102, v76, v78
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v76, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v75, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v79, v79
	v_cmp_o_f32_e64 s29, v70, v70
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v162.l, v75.h
	v_cmp_o_f32_e64 s23, v75, v75
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v103, v77, v76
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v165
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v107.l, v76.h
	v_cmp_o_f32_e64 s5, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v77, 1, v107
	v_mov_b16_e32 v107.l, v69.h
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v155
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v155.h, v73.l
	v_mov_b16_e64 v155.l, v70.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v77, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.l, v77.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s31, v77, v77
	v_and_b32_e32 v78, 1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v167
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v104.l, v78.h
	v_cmp_o_f32_e64 s33, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v104, 1, v104
	v_add3_u32 v78, v78, v104, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v166
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v104, s34
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v156.l, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v104, v104
	v_and_b32_e32 v108, 1, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v108, v104, v108, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v169
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v76.l, 0x7fff, v108.h, s34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v104, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.l, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v104, v104
	v_and_b32_e32 v154, 1, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v154, v104, v154, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v168
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v104, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v158.l, v104.h
	v_cmp_o_f32_e64 s36, v104, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v156, 1, v158
	v_add3_u32 v156, v104, v156, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v78.l, 0x7fff, v156.h, s36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v104, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v161.l, v104.h
	v_cmp_o_f32_e64 s37, v104, v104
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v158, 1, v161
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v161, 0x80000000, v80, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v80, 1, v153
	v_and_b32_e32 v153, 1, v157
	v_and_b32_e32 v157, 1, v160
	v_add3_u32 v158, v104, v158, 0x7fff
	v_mov_b16_e32 v104.h, v73.l
	v_mov_b16_e32 v73.l, v65.h
	v_add3_u32 v66, v66, v80, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[166:169], v161, s[60:63], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v80.h, 0x7fff, v158.h, s37
	v_and_b32_e32 v68, 1, v73
	v_and_b32_e32 v73, 1, v107
	v_and_b32_e32 v107, 1, v155
	v_and_b32_e32 v155, 1, v159
	v_cndmask_b16 v108.l, 0x7fff, v66.h, s28
	v_add3_u32 v65, v65, v68, 0x7fff
	v_add3_u32 v69, v69, v73, 0x7fff
	v_add3_u32 v73, v67, v153, 0x7fff
	v_add3_u32 v67, v79, v157, 0x7fff
	v_add3_u32 v68, v74, v155, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v65.h, s26
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s5
	v_cndmask_b16 v74.l, 0x7fff, v77.h, s31
	v_cndmask_b16 v76.h, 0x7fff, v78.h, s33
	v_cndmask_b16 v108.h, 0x7fff, v69.h, s27
	v_permlanex16_b32 v153, v80, s70, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v78.h, 0x7fff, v154.h, s35
	v_permlanex16_b32 v65, v74, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v66, v76, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v154, v108, s70, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v153, v80, v109
	v_perm_b32 v80, v153, v80, v110
	v_mov_b32_e32 v153, v71
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v70, v70, v107, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v73.h, s30
	v_perm_b32 v73, v65, v74, v109
	v_perm_b32 v74, v65, v74, v110
	v_perm_b32 v65, v154, v108, v109
	v_cndmask_b16 v69.h, 0x7fff, v70.h, s29
	v_permlanex16_b32 v70, v78, s70, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v77, v70, v78, v109
	v_perm_b32 v78, v70, v78, v110
	v_cndmask_b16 v70.h, 0x7fff, v68.h, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v104.l, v71.h
	v_cmp_o_f32_e64 s5, v71, v71
	v_cndmask_b16 v70.l, 0x7fff, v67.h, s25
	v_permlanex16_b32 v68, v69, s70, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v72, 1, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v67, v68, v69, v109
	v_perm_b32 v68, v68, v69, v110
	v_add3_u32 v71, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v104.l, 0x7fff, v71.h, s5
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v71, v103
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v103, v103, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v155, v99, v103
	v_max_f32_e32 v99, v101, v103
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v88, v88, v155
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v101, v150, v99
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v72, v102 :: v_dual_and_b32 v159, 1, v162
.Ltmp37:
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[162:165], v163, s[60:63], 0 offen
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v86, v86, v155
	v_sub_f32_e32 v85, v85, v155
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v107, v75, v159, 0x7fff
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v75, v66, v76, v109
	v_perm_b32 v76, v66, v76, v110
	v_perm_b32 v66, v154, v108, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v81, v81, v155 :: v_dual_max_f32 v72, v72, v72
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v86, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v87, v87, v155
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v81
.Ltmp40:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v102, v102, v72 :: v_dual_sub_f32 v83, v83, v155
.Ltmp41:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v87, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v108, v70, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v154, v98, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, 0, v85, s11
	v_cndmask_b32_e64 v86, 0, v86, s10
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v83, v83
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s17
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v91, v91, v154
	v_sub_f32_e32 v95, v95, v154
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v98, v100, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v87, s7
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v85, v81
.Ltmp43:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v95, v95
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v88, 0, v88, s6
	v_cndmask_b32_e64 v83, 0, v83, s14
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v69, v108, v70, v109
	v_perm_b32 v70, v108, v70, v110
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v87, v83
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v104.h, 0x7fff, v107.h, s23
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v91, s9
	v_cndmask_b32_e64 v95, 0, v95, s19
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v97, v[162:165]
	ds_store_b128 v97, v[166:169] offset:2048
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v91, v91, v95
.Ltmp47:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v89, v89, v154
	v_sub_f32_e32 v93, v93, v154
	v_sub_f32_e32 v92, v92, v154
	v_sub_f32_e32 v96, v96, v154
	v_sub_f32_e32 v90, v90, v154
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v90, v90
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v104, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s15
	v_cndmask_b32_e64 v93, 0, v93, s21
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v92, 0, v92, s8
	v_cndmask_b32_e64 v96, 0, v96, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v90, 0, v90, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v72, v104, v109
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v89, v89, v93 :: v_dual_sub_f32 v82, v82, v155
.Ltmp49:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v72, v72, v104, v110
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s16
.Ltmp50:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v86, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v84, v84, v155 :: v_dual_add_f32 v81, v81, v82
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v84, 0, v84, s12
.Ltmp52:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v88, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v82, v83, v84
	v_dual_add_f32 v92, v92, v96 :: v_dual_add_f32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v86, v91, v92
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v108, v81, v84
.Ltmp55:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v94, v94, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v94, v94
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v94, 0, v94, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v90, v94
	v_dual_add_f32 v85, v89, v90 :: v_dual_mov_b32 v150, v99
.Ltmp57:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v99, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v85, v86
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v82, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v157, 0, v99, s3
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s49, 32
	s_cmpk_lt_u32 s49, 0x1e0
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_mov_b32 s49, s3
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v107, v83, v82
.Ltmp63:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v148
	ds_load_u16_d16 v84, v148 offset:768
	ds_load_u16_d16 v85, v148 offset:1024
	ds_load_u16_d16 v86, v148 offset:1280
	ds_load_u16_d16 v87, v148 offset:1536
	ds_load_u16_d16 v88, v148 offset:1792
	ds_load_u16_d16 v83, v148 offset:512
	ds_load_u16_d16 v82, v148 offset:256
	ds_load_u16_d16 v92, v148 offset:608
	ds_load_u16_d16 v91, v148 offset:352
	ds_load_u16_d16 v161, v148 offset:576
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v81, v148 offset:128
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v84, v148 offset:896
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v85, v148 offset:1152
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v86, v148 offset:1408
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v87, v148 offset:1664
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v88, v148 offset:1920
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v83, v148 offset:640
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v82, v148 offset:384
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v158, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v107, v107, v158
.Ltmp66:
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v100, v149, v98 :: v_dual_mov_b32 v149, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v98, v100
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v148 offset:32
	ds_load_u16_d16 v82, v148 offset:288
	ds_load_u16_d16 v83, v148 offset:544
	ds_load_u16_d16 v84, v148 offset:800
	ds_load_u16_d16 v85, v148 offset:1056
	ds_load_u16_d16 v86, v148 offset:1312
	ds_load_u16_d16 v87, v148 offset:1568
	ds_load_u16_d16 v88, v148 offset:1824
	ds_load_u16_d16 v162, v148 offset:832
	ds_load_u16_d16 v163, v148 offset:1088
	ds_load_u16_d16 v164, v148 offset:1344
	ds_load_u16_d16 v165, v148 offset:1600
	ds_load_u16_d16 v166, v148 offset:1856
	ds_load_u16_d16 v159, v148 offset:64
	ds_load_u16_d16 v160, v148 offset:320
	ds_load_u16_d16 v90, v148 offset:96
	ds_load_u16_d16 v93, v148 offset:864
	ds_load_u16_d16 v94, v148 offset:1120
	ds_load_u16_d16 v95, v148 offset:1376
	ds_load_u16_d16 v96, v148 offset:1632
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v81, v148 offset:160
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v82, v148 offset:416
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v83, v148 offset:672
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v84, v148 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v85, v148 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v86, v148 offset:1440
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v87, v148 offset:1696
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v148 offset:1952
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v156, 0, v98, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v107, v152, v156
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[73:80], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v148 offset:2112
	ds_load_u16_d16 v97, v148 offset:1888
	ds_load_u16_d16 v82, v148 offset:2368
	ds_load_u16_d16_hi v161, v148 offset:704
	ds_load_u16_d16_hi v162, v148 offset:960
	ds_load_u16_d16_hi v163, v148 offset:1216
	ds_load_u16_d16_hi v164, v148 offset:1472
	ds_load_u16_d16_hi v165, v148 offset:1728
	ds_load_u16_d16_hi v166, v148 offset:1984
	ds_load_u16_d16_hi v159, v148 offset:192
	ds_load_u16_d16_hi v160, v148 offset:448
	ds_load_u16_d16 v89, v148 offset:2144
	ds_load_u16_d16_hi v91, v148 offset:480
	ds_load_u16_d16_hi v90, v148 offset:224
	ds_load_u16_d16_hi v92, v148 offset:736
	ds_load_u16_d16_hi v93, v148 offset:992
	ds_load_u16_d16_hi v94, v148 offset:1248
	ds_load_u16_d16_hi v95, v148 offset:1504
	ds_load_u16_d16_hi v96, v148 offset:1760
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v97, v148 offset:2016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[159:166], v[73:80], v[9:16]
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v159, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[90:97], v[73:80], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v148 offset:2048
	ds_load_u16_d16 v75, v148 offset:2560
	ds_load_u16_d16 v83, v148 offset:2624
	ds_load_u16_d16 v76, v148 offset:2816
	ds_load_u16_d16 v84, v148 offset:2880
	ds_load_u16_d16 v77, v148 offset:3072
	ds_load_u16_d16 v85, v148 offset:3136
	ds_load_u16_d16 v78, v148 offset:3328
	ds_load_u16_d16 v86, v148 offset:3392
	ds_load_u16_d16 v79, v148 offset:3584
	ds_load_u16_d16 v87, v148 offset:3648
	ds_load_u16_d16 v80, v148 offset:3840
	ds_load_u16_d16 v74, v148 offset:2304
	ds_load_u16_d16 v88, v148 offset:3904
	ds_load_u16_d16 v90, v148 offset:2400
	ds_load_u16_d16 v91, v148 offset:2656
	ds_load_u16_d16 v92, v148 offset:2912
	ds_load_u16_d16 v93, v148 offset:3168
	ds_load_u16_d16 v94, v148 offset:3424
	ds_load_u16_d16 v95, v148 offset:3680
	ds_load_u16_d16 v96, v148 offset:3936
	ds_load_u16_d16 v97, v148 offset:2080
	ds_load_u16_d16 v98, v148 offset:2336
	ds_load_u16_d16 v99, v148 offset:2592
	ds_load_u16_d16 v100, v148 offset:2848
	ds_load_u16_d16 v101, v148 offset:3104
	ds_load_u16_d16 v102, v148 offset:3360
	ds_load_u16_d16 v103, v148 offset:3616
	ds_load_u16_d16 v104, v148 offset:3872
	ds_load_u16_d16_hi v81, v148 offset:2240
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v73, v148 offset:2176
	ds_load_u16_d16_hi v82, v148 offset:2496
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v148 offset:2688
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v83, v148 offset:2752
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v76, v148 offset:2944
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v84, v148 offset:3008
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v77, v148 offset:3200
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v85, v148 offset:3264
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v78, v148 offset:3456
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v86, v148 offset:3520
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v79, v148 offset:3712
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v87, v148 offset:3776
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v80, v148 offset:3968
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v74, v148 offset:2432
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v88, v148 offset:4032
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v97, v148 offset:2208
	ds_load_u16_d16_hi v89, v148 offset:2272
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v98, v148 offset:2464
	ds_load_u16_d16_hi v90, v148 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v148 offset:2720
	ds_load_u16_d16_hi v91, v148 offset:2784
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v100, v148 offset:2976
	ds_load_u16_d16_hi v92, v148 offset:3040
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v101, v148 offset:3232
	ds_load_u16_d16_hi v93, v148 offset:3296
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v102, v148 offset:3488
	ds_load_u16_d16_hi v94, v148 offset:3552
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v103, v148 offset:3744
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v104, v148 offset:4000
	ds_load_u16_d16_hi v95, v148 offset:3808
	ds_load_u16_d16_hi v96, v148 offset:4064
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v108, v108, v159
.Ltmp70:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v108, v151, v157
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[65:72], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v115
	v_add_nc_u32_e32 v34, 0, v117
	v_lshl_add_u32 v35, v144, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_b64 v35, v[107:108]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 1, v114
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v113
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v112
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s68, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s39, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 0x200, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s53, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v38
	v_rcp_f32_e32 v47, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v42
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v50, null, v37, v37, v29
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s2, v26, v37, v26
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v52, null, v37, v37, v30
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v49, 1.0
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_div_scale_f32 v43, s3, v27, v37, v27
	v_div_scale_f32 v45, s4, v28, v37, v28
	v_rcp_f32_e32 v58, v52
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_fmac_f32_e32 v49, v57, v49
	v_mul_f32_e32 v56, v41, v47
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v43, v48
	v_div_scale_f32 v51, s5, v29, v37, v29
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v59, v45, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fma_f32 v61, -v38, v55, v39
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v56, v62, v47
	v_fma_f32 v64, -v44, v59, v45
	v_fma_f32 v63, -v42, v57, v43
	v_fmac_f32_e32 v58, v60, v58
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_mul_f32 v54, v51, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v64, v49
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v44, v59, v45
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v57, v63, v48
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s2
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s2, 0, v37
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v54, v44, v53
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v25, v38, v37, v25
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s3, v30, v37, v30
	v_div_scale_f32 v43, null, v37, v37, v32
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v45, v39, v58
	v_div_fixup_f32 v27, v40, v37, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v38, 1.0
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v44, null, v37, v37, v17
	v_fma_f32 v40, -v52, v45, v39
	v_fmac_f32_e32 v38, v46, v38
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v48, -v50, v54, v51
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v40, v58
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s4, v31, v37, v31
	v_fma_f32 v46, -v43, v47, 1.0
	v_div_fmas_f32 v48, v48, v53, v54
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v50, -v42, v40, v41
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_scale_f32 v46, s6, v32, v37, v32
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v52, v49
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v42, -v53, v45, 1.0
	v_mul_f32_e32 v51, v46, v47
	v_div_scale_f32 v52, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v50, -v43, v51, v46
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s2
	v_cndmask_b32_e64 v26, 0, v26, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v51, v50, v47
	v_div_fixup_f32 v31, v38, v37, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_div_scale_f32 v43, s4, v18, v37, v18
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v38, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v44, s5, v19, v37, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v46, v40, 1.0
	v_div_fmas_f32 v38, v38, v49, v41
	v_fmac_f32_e32 v47, v39, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_div_scale_f32 v49, s3, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v40
	v_fma_f32 v54, -v51, v41, 1.0
	v_div_scale_f32 v45, s4, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v54, v41
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s2
	v_cndmask_b32_e64 v32, 0, v32, s2
	v_cndmask_b32_e64 v17, 0, v17, s2
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v48, v39, v44
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v39, v44
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s6, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v51, v43, v45
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s3, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s4, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s5, v9, v37, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v46, s3, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v23, v39, v37, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v40, s4, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s2
	v_cndmask_b32_e64 v24, 0, v24, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_rcp_f32_e32 v49, v43
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s5, v14, v37, v14
	v_div_scale_f32 v40, s3, v15, v37, v15
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v38, s4, v16, v37, v16
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s5, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v54, -v46, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v2, v37, v2
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v51, v55, 1.0
	v_fmac_f32_e32 v56, v41, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v46, v43, v54
	v_fma_f32 v38, -v48, v47, v38
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_fixup_f32 v15, v40, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	v_fmac_f32_e32 v41, v46, v55
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v37, v37, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	v_cndmask_b32_e64 v2, 0, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s5, v7, v37, v7
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v53, v46
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s4, v6, v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s3, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s6, v8, v37, v8
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v51, v58
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v39, v27, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v37, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_cndmask_b32_e64 v6, 0, v6, s2
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v28, s0
	v_cndmask_b32_e64 v7, v17, v26, s0
	v_cndmask_b32_e64 v8, v26, v17, s0
	v_cndmask_b32_e64 v14, v29, v20, s0
	v_cndmask_b32_e64 v15, v19, v18, s0
	v_cndmask_b32_e64 v16, v18, v19, s0
	v_cndmask_b32_e64 v17, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v18, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v19, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v5, v28, v25, s0
	v_cndmask_b32_e64 v13, v20, v29, s0
	v_permlanex16_b32 v3, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s53, v34
	v_cmp_gt_i32_e64 s4, s53, v35
	v_cmp_gt_i32_e64 s2, s53, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v3, v5, v109
	v_perm_b32 v2, v3, v5, v110
	v_perm_b32 v5, v6, v13, v109
	v_perm_b32 v6, v6, v13, v110
	v_perm_b32 v9, v11, v17, v109
	v_perm_b32 v10, v11, v17, v110
	v_perm_b32 v11, v14, v12, v109
	v_perm_b32 v12, v14, v12, v110
	v_perm_b32 v13, v16, v18, v109
	v_perm_b32 v14, v16, v18, v110
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s53, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v3, v4, v7, v109
	v_perm_b32 v4, v4, v7, v110
	v_perm_b32 v7, v8, v15, v109
	v_perm_b32 v8, v8, v15, v110
	v_perm_b32 v15, v20, v19, v109
	v_perm_b32 v16, v20, v19, v110
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s0, s1, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s51, 0xffff
	s_mov_b32 s8, s50
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v18, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v19, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v0, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp71:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 171
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 171
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12476
; TotalNumSgprs: 73
; NumVgprs: 171
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 73
; NumVGPRsForWavesPerEU: 171
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     171
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
